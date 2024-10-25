package com.javabackend.shop.repository;

import com.javabackend.shop.entity.CategoryEntity;
import com.javabackend.shop.entity.ProductEntity;
import com.javabackend.shop.entity.UserEntity;
import com.javabackend.shop.model.dto.ProductDTO;
import com.javabackend.shop.repository.custom.ProductRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<ProductEntity, Long>, ProductRepositoryCustom {
    List<ProductEntity> findProductEntitiesByDiscount(Integer discount);
}
