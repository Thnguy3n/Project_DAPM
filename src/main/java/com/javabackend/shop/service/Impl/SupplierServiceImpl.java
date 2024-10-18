package com.javabackend.shop.service.Impl;

import com.javabackend.shop.entity.SupplierEntity;
import com.javabackend.shop.model.dto.SupplierDTO;
import com.javabackend.shop.repository.SupplierRepository;
import com.javabackend.shop.service.ISupplierService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class SupplierServiceImpl implements ISupplierService {
    @Autowired
    private SupplierRepository supplierRepository;
    @Autowired
    private ModelMapper modelMapper;
    @Override
    public List<SupplierDTO> findAll() {
        List<SupplierEntity> supplierEntities = supplierRepository.findAll();
        return supplierEntities.stream()
                .map(supplier -> modelMapper.map(supplier, SupplierDTO.class))
                .collect(Collectors.toList());
    }
}
