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
    private Integer inventory;
    @Column(name = "description")
    private String description;
    @Column(name = "deleted")
    private Integer deleted;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private CategoryEntity categoryEntity;

    @ManyToOne
    @JoinColumn(name ="supplier_id")
    private SupplierEntity supplierEntity;

//    @OneToMany(fetch = FetchType.LAZY,mappedBy = "productEntity")
//    List<CartEntity> cartEntities=new ArrayList<>();

    @OneToMany(fetch = FetchType.LAZY,mappedBy = "productEntity")
    List<GaleryEntity> galeryEntities=new ArrayList<>();

    public String getCategoryName() {
        return categoryEntity != null ? categoryEntity.getName() : null;
    }

    public String getSupplierName() {
        return supplierEntity != null ? supplierEntity.getProductName() : null;
    }

    public List<GaleryEntity> getGaleryEntities() {
        return galeryEntities;
    }

    public void setGaleryEntities(List<GaleryEntity> galeryEntities) {
        this.galeryEntities = galeryEntities;
    }

//    public List<CartEntity> getCartEntities() {
//        return cartEntities;
//    }
//
//    public void setCartEntities(List<CartEntity> cartEntities) {
//        this.cartEntities = cartEntities;
//    }

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

    public void setInventory(Integer inventory) {
        this.inventory = inventory;
    }

    public CategoryEntity getCategoryEntity() {
        return categoryEntity;
    }

    public void setCategoryEntity(CategoryEntity categoryEntity) {
        this.categoryEntity = categoryEntity;
    }

    public SupplierEntity getSupplierEntity() {
        return supplierEntity;
    }

    public void setSupplierEntity(SupplierEntity supplierEntity) {
        this.supplierEntity = supplierEntity;
    }
}
