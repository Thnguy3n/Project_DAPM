package com.javabackend.shop.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "product")
public class ProductEntity extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "title")
    private String title;
    @Column(name = "price")
    private String price;
    @Column(name = "discount")
    private Integer discount;
    @Column(name = "image")
    private String image;
    @Column(name = "inventory")
    private int inventory;
    @Column(name = "description")
    private String description;
    @Column(name = "deleted")
    private Integer deleted;
    @ManyToOne
    @JoinColumn(name ="categoryId")
    private CategoryEntity category;
    @ManyToOne
    @JoinColumn(name ="supplierId")
    private SupplierEntity supplierEntity;

    @Override
    public Long getId() {
        return id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public Integer getDiscount() {
        return discount;
    }

    public void setDiscount(Integer discount) {
        this.discount = discount;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    public CategoryEntity getCategory() {
        return category;
    }

    public void setCategory(CategoryEntity category) {
        this.category = category;
    }

    public SupplierEntity getSupplierEntity() {
        return supplierEntity;
    }

    public void setSupplierEntity(SupplierEntity supplierEntity) {
        this.supplierEntity = supplierEntity;
    }
}