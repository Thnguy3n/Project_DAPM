package com.javabackend.shop.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "cart")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartEntity extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "price")
    private String price;
    @Column(name = "quantity")
    private Integer quantity;
    @Column(name = "totalPrice")
    private Double totalPrice;
    @ManyToOne
    @JoinColumn(name ="product_id")
    private ProductEntity productEntity;

}
