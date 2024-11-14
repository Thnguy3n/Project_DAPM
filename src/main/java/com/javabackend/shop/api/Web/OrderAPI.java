package com.javabackend.shop.api.Web;

import com.javabackend.shop.entity.OrderItemEntity;
import com.javabackend.shop.model.dto.OrderDTO;
import com.javabackend.shop.model.dto.OrderItemDTO;
import com.javabackend.shop.model.dto.ProductDTO;
import com.javabackend.shop.repository.OrderItemRepository;
import com.javabackend.shop.service.ICartService;
import com.javabackend.shop.service.IOrderService;
import com.javabackend.shop.service.IProductService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@RestController(value = "orderAPI")
@RequestMapping("/api/order")
public class OrderAPI {
    @Autowired
    private IOrderService orderService;
    @Autowired
    private ICartService cartService;
    @Autowired
    private OrderItemRepository orderItemRepository;
    @Autowired
    private ModelMapper modelMapper;
    @PostMapping
    public String addOrder(@Valid @RequestBody OrderDTO orderDTO, @RequestParam Long cartId, @RequestParam String paymentMethod, HttpServletRequest req){
        String paymentUrl = orderService.addOrder(orderDTO, paymentMethod, req);
        cartService.removeCartItem(cartId);
        return paymentUrl;
    }
    @GetMapping("/{id}")
    public ResponseEntity<List<OrderItemDTO>> getOrderDetails(@PathVariable Long id) {
        List<OrderItemEntity> orderItems = orderItemRepository.findOrderItemEntitiesByOrderId(id);
        List<OrderItemDTO> dtoList = orderItems.stream()
                .map(item -> modelMapper.map(item, OrderItemDTO.class))
                .collect(Collectors.toList());
        return ResponseEntity.ok(dtoList);
    }
    @DeleteMapping("/{id}")
    public void deleteOrder(@PathVariable Long id){
        orderService.deleteOrder(id);
    }

}
