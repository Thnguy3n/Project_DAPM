package com.javabackend.shop.service;

import com.javabackend.shop.model.dto.CategoryDTO;

import java.util.List;

public interface ICategoryService {
    List<CategoryDTO> findAll();
}
