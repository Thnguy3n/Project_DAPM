package com.javabackend.shop.Controller.admin;

import com.javabackend.shop.entity.OrderEntity;
import com.javabackend.shop.entity.OrderItemEntity;
import com.javabackend.shop.entity.UserEntity;
import com.javabackend.shop.model.dto.*;
import com.javabackend.shop.repository.OrderItemRepository;
import com.javabackend.shop.repository.OrderRepository;
import com.javabackend.shop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller(value = "orderManagementOfadmin")
public class OrderController {
    @Autowired
    private OrderRepository orderRepository;
    @RequestMapping(value = "/admin/order-list", method = RequestMethod.GET)
    public ModelAndView OrderManagement(@ModelAttribute OrderDTO orderDTO){
        ModelAndView modelAndView = new ModelAndView("admin/Order/list");
        List<OrderEntity>orderEntities=orderRepository.findAll();
        modelAndView.addObject("order", orderEntities);
        return modelAndView;
    }

}
