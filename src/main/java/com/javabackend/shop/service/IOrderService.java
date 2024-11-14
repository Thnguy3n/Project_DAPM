package com.javabackend.shop.service;

import com.javabackend.shop.entity.PaymentEntity;
import com.javabackend.shop.model.dto.OrderDTO;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface IOrderService {
    String addOrder(OrderDTO orderDTO, String paymentMethod, HttpServletRequest req);
    void deleteOrder(Long Id);
}
