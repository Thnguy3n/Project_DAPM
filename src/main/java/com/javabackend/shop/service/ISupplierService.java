package com.javabackend.shop.service;

import com.javabackend.shop.model.dto.SupplierDTO;

import java.util.List;

public interface ISupplierService {
    List<SupplierDTO> findAll();
}
