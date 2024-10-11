package com.javabackend.shop.service.Impl;

import com.javabackend.shop.Utils.UploadFileUtils;
import com.javabackend.shop.entity.ProductEntity;
import com.javabackend.shop.model.Response.ProductResponse;
import com.javabackend.shop.model.dto.ProductDTO;
import com.javabackend.shop.model.request.ProductRequest;
import com.javabackend.shop.repository.ProductRepository;
import com.javabackend.shop.service.IProductService;
import org.apache.tomcat.util.codec.binary.Base64;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
public class ProductServiceImpl implements IProductService {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ModelMapper modelMapper;
    private final UploadFileUtils uploadFileUtils;
    @Autowired
    public ProductServiceImpl(UploadFileUtils uploadFileUtils) {
        this.uploadFileUtils = uploadFileUtils;
    }

    @Override
    public List<ProductResponse> findAll(ProductRequest productRequest) {
        List<ProductEntity> productEntities =productRepository.findAll(productRequest);
        List<ProductResponse> productResponses = new ArrayList<>();
        for(ProductEntity it : productEntities ){
            ProductResponse productResponse = modelMapper.map(it, ProductResponse.class); ;
            productResponses.add(productResponse);
        }
        return productResponses;
    }

    @Override
    public void addOrUpdateProduct(ProductDTO productDTO) {
        ProductEntity productEntity = modelMapper.map(productDTO, ProductEntity.class);
        saveThumbnail(productDTO, productEntity);
        productRepository.save(productEntity);
    }

    @Override
    public void deleteProducts(List<Long> Id) {
        List<ProductEntity> productEntities = productRepository.findAllById(Id);
        productRepository.deleteAll(productEntities);
    }

    @Override
    public ProductDTO findProductById(Long Id) {
        ProductEntity productEntity = productRepository.findById(Id).get();
        ProductDTO productDTO = modelMapper.map(productEntity, ProductDTO.class);
        return productDTO;
    }

    public void saveThumbnail(ProductDTO productDTO, ProductEntity productEntity) {
        String path = "/product/" + productDTO.getImageName();
        if (null != productDTO.getImageBase64()) {
            if (null != productEntity.getImage()) {
                if (!path.equals(productEntity.getImage())) {
                    File file = new File("C://home/DAPM" + productEntity.getImage());
                    file.delete();
                }
            }
            byte[] bytes = Base64.decodeBase64(productDTO.getImageBase64().getBytes());
            uploadFileUtils.writeOrUpdate(path,bytes);
            productEntity.setImage(path);
        }

    }
}
