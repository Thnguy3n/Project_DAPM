package com.javabackend.shop.service;

import com.javabackend.shop.model.Response.ProductResponse;
import com.javabackend.shop.model.dto.ProductDTO;
import com.javabackend.shop.model.request.ProductRequest;

import java.util.List;
public interface IProductService {
    List<ProductResponse> findAll(ProductRequest productRequest);
    void addOrUpdateProduct(ProductDTO productDTO);
    void deleteProducts(List<Long> Id);
    ProductDTO findProductById(Long Id);
}
