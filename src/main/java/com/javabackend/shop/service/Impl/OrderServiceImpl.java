package com.javabackend.shop.service.Impl;

import com.javabackend.shop.entity.OrderEntity;
import com.javabackend.shop.entity.OrderItemEntity;
import com.javabackend.shop.model.dto.OrderDTO;
import com.javabackend.shop.model.dto.OrderItemDTO;
import com.javabackend.shop.repository.OrderItemRepository;
import com.javabackend.shop.repository.OrderRepository;
import com.javabackend.shop.repository.ProductRepository;
import com.javabackend.shop.repository.UserRepository;
import com.javabackend.shop.security.utils.SecurityUtils;
import com.javabackend.shop.service.IOrderService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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
    @Override
    public void addOrder(OrderDTO orderDTO) {
        OrderEntity orderEntity = modelMapper.map(orderDTO, OrderEntity.class);
        List<OrderItemEntity> orderItemEntities = new ArrayList<>();
        for (OrderItemDTO orderItemDTO : orderDTO.getOrderItems()) {
            OrderItemEntity orderItemEntity = modelMapper.map(orderItemDTO, OrderItemEntity.class);
            orderItemEntity.setProductEntity(productRepository.findById(orderItemDTO.getProductId()).get());
            orderItemEntity.setOrderEntity(orderEntity);
            orderItemEntities.add(orderItemEntity);
        }
        Long userId = SecurityUtils.getPrincipal().getId();
        orderEntity.setUserEntity(userRepository.findById(userId).get());
        orderRepository.save(orderEntity);
        orderItemRepository.saveAll(orderItemEntities);

    }
}
