package com.javabackend.shop.service;

import com.javabackend.shop.entity.CategoryEntity;
import com.javabackend.shop.model.dto.CartDTO;
import com.javabackend.shop.model.dto.CartItemDTO;
import com.javabackend.shop.model.dto.CategoryDTO;
import org.springframework.http.ResponseEntity;

import java.util.List;
import java.util.stream.Collectors;

public interface ICartService {
    void addToCart(CartItemDTO cartItemDTO, Long userId);
    CartDTO loadCart(Long userId);
    void removeFromCart(Long cartItemId);
}
