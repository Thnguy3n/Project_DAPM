package com.javabackend.shop.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "orders")
public class OrderEntity extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "fullname")
    private String fullName;
    @Column(name = "phonenumber")
    private String phoneNumber;
    @Column(name = "email")
    private String email;
    @Column(name = "address")
    private String address;
    @Column(name = "note")
    private String note;
    @Column(name = "orderDate")
    private Date orderDate;
    @Column(name = "status")
    private String status;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity userEntity;
    @OneToMany(fetch = FetchType.LAZY,mappedBy = "orderEntity")
    List<OrderItemEntity>orderItemEntities=new ArrayList<>();

}
