package com.javabackend.shop.api.Web;

import com.javabackend.shop.model.dto.OrderDTO;
import com.javabackend.shop.model.dto.ProductDTO;
import com.javabackend.shop.service.ICartService;
import com.javabackend.shop.service.IOrderService;
import com.javabackend.shop.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@RestController(value = "orderAPI")
@RequestMapping("/api/order")
public class OrderAPI {
    @Autowired
    private IOrderService orderService;
    @Autowired
    private ICartService cartService;
    @PostMapping
    public OrderDTO addOrder(@RequestBody OrderDTO orderDTO,@RequestParam Long cartId){
        orderService.addOrder(orderDTO);
        cartService.removeCartItem(cartId);
        return orderDTO;
    }
}
