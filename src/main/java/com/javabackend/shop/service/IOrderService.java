package com.javabackend.shop.service;

import com.javabackend.shop.model.dto.OrderDTO;

public interface IOrderService {
    void addOrder(OrderDTO orderDTO);
}
