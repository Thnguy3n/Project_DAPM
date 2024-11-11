package com.javabackend.shop.service;

import com.javabackend.shop.model.dto.OrderDTO;

import java.util.List;

public interface IOrderService {
    void addOrder(OrderDTO orderDTO);
    void deleteOrder(Long Id);
}
