package com.javabackend.shop.model.dto;

import lombok.Data;

@Data
public class ProductDTO extends AbstractDTO{
    private Long id;
    private String title;
    private Double price;
    private Integer discount;
    private String image;
    private Integer inventory;
    private String description;
    private Integer deleted;
    private String imageBase64;
    private String imageName ;
    private Long categoryId;
    private Long supplierId;

}
