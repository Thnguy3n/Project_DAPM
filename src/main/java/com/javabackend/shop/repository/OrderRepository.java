package com.javabackend.shop.repository;

import com.javabackend.shop.entity.CartEntity;
import com.javabackend.shop.entity.CategoryEntity;
import com.javabackend.shop.entity.OrderEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface OrderRepository extends JpaRepository<OrderEntity, Long> {
    @Query("SELECT o FROM OrderEntity o WHERE o.userEntity.id = :userId")
    Optional<OrderEntity> findOrderByUserId(@Param("userId") Long userId);
}
