package com.javabackend.shop.model.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDTO extends AbstractDTO {
    private Long id;
    private String fullName;
    private String phoneNumber;
    private String email;
    private String address;
    private String note;
    private String status;
    private Long userId;
    private List<OrderItemDTO> orderItems;
}
