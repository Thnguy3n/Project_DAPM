package com.javabackend.shop.api.Web;

import com.javabackend.shop.entity.OrderEntity;
import com.javabackend.shop.entity.OrderItemEntity;
import com.javabackend.shop.model.dto.OrderDTO;
import com.javabackend.shop.model.dto.OrderItemDTO;
import com.javabackend.shop.model.dto.ProductDTO;
import com.javabackend.shop.repository.OrderItemRepository;
import com.javabackend.shop.service.ICartService;
import com.javabackend.shop.service.IOrderService;
import com.javabackend.shop.service.IProductService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController(value = "orderAPI")
@RequestMapping("/api/order")
public class OrderAPI {
    @Autowired
    private IOrderService orderService;
    @Autowired
    private ICartService cartService;
    @Autowired
    private OrderItemRepository orderItemRepository;
    @Autowired
    private ModelMapper modelMapper;
    @PostMapping
    public ResponseEntity<String> addOrder(@Valid @RequestBody OrderDTO orderDTO, @RequestParam Long cartId, @RequestParam String paymentMethod, HttpServletRequest req){
//        String paymentUrl = orderService.addOrder(orderDTO, paymentMethod, req);
        cartService.removeCartItem(cartId);
        return orderService.addOrder(orderDTO, paymentMethod, req);
    }
    @GetMapping("/vnpay_return")
    public void handleVnpayReturn(@RequestParam("vnp_TxnRef") String txnRef,
                                  @RequestParam("vnp_ResponseCode") String responseCode,
                                  HttpServletResponse response) throws IOException {
        if ("00".equals(responseCode)) {
            Long orderId = Long.parseLong(txnRef);
            orderService.updatePaymentStatus(orderId);
            response.sendRedirect("http://localhost:8083/payment_success");
        } else {
            response.sendRedirect("http://localhost:8083/payment_fail");
        }
    }

    @PostMapping("/{id}/complete")
    public ResponseEntity<Map<String, Object>> completeOrder(@PathVariable Long id) {
        orderService.updateOrderStatus(id);
        Map<String, Object> response = new HashMap<>();
        response.put("success", true);
        response.put("message", "Trạng thái đơn hàng đã được cập nhật thành công.");
        return ResponseEntity.ok(response);
    }

    @GetMapping("/{id}")
    public ResponseEntity<List<OrderItemDTO>> getOrderDetails(@PathVariable Long id) {
        List<OrderItemEntity> orderItems = orderItemRepository.findOrderItemEntitiesByOrderId(id);
        List<OrderItemDTO> dtoList = orderItems.stream()
                .map(item -> modelMapper.map(item, OrderItemDTO.class))
                .collect(Collectors.toList());
        return ResponseEntity.ok(dtoList);
    }
    @DeleteMapping("/{id}")
    public void deleteOrder(@PathVariable Long id){
        orderService.deleteOrder(id);
    }

}
