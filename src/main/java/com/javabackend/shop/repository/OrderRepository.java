package com.javabackend.shop.repository;

import com.javabackend.shop.entity.CartEntity;
import com.javabackend.shop.entity.CategoryEntity;
import com.javabackend.shop.entity.OrderEntity;
import com.javabackend.shop.repository.custom.OrderRepositoryCustom;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface OrderRepository extends JpaRepository<OrderEntity, Long>, OrderRepositoryCustom {
    @Query("SELECT o FROM OrderEntity o WHERE o.userEntity.id = :userId")
    Optional<OrderEntity> findOrderByUserId(@Param("userId") Long userId);
    List<OrderEntity> findAllByStatus(String status);
    Page<OrderEntity> findAll(Pageable pageable);
}
