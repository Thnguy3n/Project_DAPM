package com.javabackend.shop.repository;

import com.javabackend.shop.entity.CategoryEntity;
import com.javabackend.shop.entity.OrderItemEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderItemRepository extends JpaRepository<OrderItemEntity, Long> {
}
