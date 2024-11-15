package com.javabackend.shop.service;

import com.javabackend.shop.entity.PaymentEntity;
import com.javabackend.shop.model.dto.OrderDTO;
import org.springframework.http.ResponseEntity;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface IOrderService {
    ResponseEntity<String> addOrder(OrderDTO orderDTO, String paymentMethod, HttpServletRequest req);
    void deleteOrder(Long Id);
    void updatePaymentStatus(Long orderId);
    void updateOrderStatus(Long orderId);
}
