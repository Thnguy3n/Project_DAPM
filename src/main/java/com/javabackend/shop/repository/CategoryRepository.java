package com.javabackend.shop.repository;

import com.javabackend.shop.entity.CategoryEntity;
import com.javabackend.shop.entity.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CategoryRepository extends JpaRepository<CategoryEntity, Long> {


}
