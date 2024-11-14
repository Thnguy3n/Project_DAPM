package com.javabackend.shop.service.Impl;

import com.javabackend.shop.config.VnpayConfig;
import com.javabackend.shop.entity.OrderEntity;
import com.javabackend.shop.entity.OrderItemEntity;
import com.javabackend.shop.entity.PaymentEntity;
import com.javabackend.shop.entity.ProductEntity;
import com.javabackend.shop.model.dto.OrderDTO;
import com.javabackend.shop.model.dto.OrderItemDTO;
import com.javabackend.shop.model.dto.PaymentDTO;
import com.javabackend.shop.repository.*;
import com.javabackend.shop.security.utils.SecurityUtils;
import com.javabackend.shop.service.IOrderService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class OrderServiceImpl implements IOrderService {
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private OrderItemRepository orderItemRepository;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private PaymentRepository paymentRepository;
    @Override
    public String addOrder(OrderDTO orderDTO, String paymentMethod, HttpServletRequest req) {
        OrderEntity orderEntity = modelMapper.map(orderDTO, OrderEntity.class);
        Long userId = SecurityUtils.getPrincipal().getId();
        orderEntity.setUserEntity(userRepository.findById(userId).get());
        orderEntity.setStatus("Chưa thanh toán");
        orderRepository.save(orderEntity);
        PaymentEntity paymentEntity = new PaymentEntity();
        paymentEntity.setOrderEntity(orderEntity);
        paymentEntity.setMethodPayment(paymentMethod);
        paymentEntity.setStatus("Chưa thanh toán");
        List<OrderItemEntity> orderItemEntities = new ArrayList<>();
        for (OrderItemDTO orderItemDTO : orderDTO.getOrderItems()) {
            ProductEntity productEntity = productRepository.findById(orderItemDTO.getProductId()).get();
            OrderItemEntity orderItemEntity = modelMapper.map(orderItemDTO, OrderItemEntity.class);
            orderItemEntity.setProductEntity(productEntity);
            productEntity.setInventory(productEntity.getInventory()-orderItemEntity.getQuantity());
            orderItemEntity.setOrderEntity(orderEntity);
            paymentEntity.setAmount(orderItemEntity.getTotal());
            orderItemEntities.add(orderItemEntity);
            productRepository.save(productEntity);
        }
        paymentEntity.setAmount(orderItemEntities.stream()
                .mapToDouble(OrderItemEntity::getTotal)
                .sum());
        paymentRepository.save(paymentEntity);
        orderItemRepository.saveAll(orderItemEntities);
        if(paymentMethod.equals("VNPAY")) {
            String paymentUrl = generateVnpayUrl(paymentEntity,req);
            return paymentUrl;
        }
        else {
            return "/payment_success";
        }

    }

    @Override
    public void deleteOrder(Long Id) {
        List<OrderItemEntity> orderItems = orderItemRepository.findOrderItemEntitiesByOrderId(Id);
        OrderEntity orderEntity = orderRepository.findById(Id).get();
        PaymentEntity paymentEntity=paymentRepository.findPaymentEntitiesByOrderById(Id);
        orderItemRepository.deleteAll(orderItems);
        paymentRepository.delete(paymentEntity);
        orderRepository.delete(orderEntity);
    }

    @Override
    public void updatePaymentStatus(Long orderId) {
        PaymentEntity paymentEntity = paymentRepository.findPaymentEntitiesByOrderById(orderId);
            paymentEntity.setStatus("Thanh toán thành công");
            paymentRepository.save(paymentEntity);
        OrderEntity orderEntity = orderRepository.findById(orderId).get();
            orderEntity.setStatus("Đang xử lý");
            orderRepository.save(orderEntity);
    }

    @Override
    public void updateOrderStatus(Long orderId) {
        OrderEntity orderEntity = orderRepository.findById(orderId).get();
        orderEntity.setStatus("Đã giao hàng");
        orderRepository.save(orderEntity);
    }

    public String generateVnpayUrl(PaymentEntity paymentEntity, HttpServletRequest req) {
        try {
            String orderType = "other";
            long amount = (long) (paymentEntity.getAmount() * 100);
            Long vnp_TxnRef = paymentEntity.getOrderEntity().getId();
            String vnp_IpAddr = VnpayConfig.getIpAddress(req);
            String vnp_TmnCode = VnpayConfig.vnp_TmnCode;

            Map<String, String> vnp_Params = new HashMap<>();
            vnp_Params.put("vnp_Version", VnpayConfig.vnp_Version);
            vnp_Params.put("vnp_Command", VnpayConfig.vnp_Command);
            vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
            vnp_Params.put("vnp_Amount", String.valueOf(amount));
            vnp_Params.put("vnp_CurrCode", "VND");
            vnp_Params.put("vnp_BankCode", "NCB");
            vnp_Params.put("vnp_Locale", "vn");
            vnp_Params.put("vnp_TxnRef", vnp_TxnRef.toString());
            vnp_Params.put("vnp_OrderInfo", "Thanh toan don hang:" + vnp_TxnRef);
            vnp_Params.put("vnp_ReturnUrl", VnpayConfig.vnp_ReturnUrl);
            vnp_Params.put("vnp_IpAddr", vnp_IpAddr);
            vnp_Params.put("vnp_OrderType", orderType);

            Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));
            SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
            String vnp_CreateDate = formatter.format(cld.getTime());
            vnp_Params.put("vnp_CreateDate", vnp_CreateDate);

            cld.add(Calendar.MINUTE, 15);
            String vnp_ExpireDate = formatter.format(cld.getTime());
            vnp_Params.put("vnp_ExpireDate", vnp_ExpireDate);

            List<String> fieldNames = new ArrayList<>(vnp_Params.keySet());
            Collections.sort(fieldNames);
            StringBuilder hashData = new StringBuilder();
            StringBuilder query = new StringBuilder();
            for (String fieldName : fieldNames) {
                String fieldValue = vnp_Params.get(fieldName);
                if ((fieldValue != null) && (fieldValue.length() > 0)) {
                    // Build hash data
                    hashData.append(fieldName).append('=').append(URLEncoder.encode(fieldValue, String.valueOf(StandardCharsets.US_ASCII)));
                    // Build query
                    query.append(URLEncoder.encode(fieldName, String.valueOf(StandardCharsets.US_ASCII))).append('=')
                            .append(URLEncoder.encode(fieldValue, String.valueOf(StandardCharsets.US_ASCII)));
                    if (!fieldName.equals(fieldNames.get(fieldNames.size() - 1))) {
                        query.append('&');
                        hashData.append('&');
                    }
                }
            }

            String vnp_SecureHash = VnpayConfig.hmacSHA512(VnpayConfig.secretKey, hashData.toString());
            query.append("&vnp_SecureHash=").append(vnp_SecureHash);
            return VnpayConfig.vnp_PayUrl + "?" + query.toString();
        }
        catch (UnsupportedEncodingException e){
            e.printStackTrace();
            return null;
        }
    }


}
