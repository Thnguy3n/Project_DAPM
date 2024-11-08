package com.javabackend.shop.Controller.web;

import com.javabackend.shop.entity.CartItemEntity;
import com.javabackend.shop.model.dto.CartDTO;
import com.javabackend.shop.model.dto.OrderDTO;
import com.javabackend.shop.security.utils.SecurityUtils;
import com.javabackend.shop.service.ICartService;
import com.javabackend.shop.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller (value = "ordercontroller")
public class OrderController {
    @Autowired
    private IOrderService orderService;
    @Autowired
    private ICartService cartService;
    @RequestMapping(value = "/order",method = RequestMethod.GET)
    public ModelAndView OrderPage(@ModelAttribute("newOrder") OrderDTO orderDTO) {
        ModelAndView view = new ModelAndView("web/checkout");
        if (SecurityContextHolder.getContext().getAuthentication() != null &&
                SecurityContextHolder.getContext().getAuthentication().isAuthenticated() &&
                !(SecurityContextHolder.getContext().getAuthentication() instanceof AnonymousAuthenticationToken)) {
             Long userId = SecurityUtils.getPrincipal().getId();
            CartDTO cartDTO =cartService.loadCart(userId);
            view.addObject("cartItem",cartDTO.getItems());
        }
        view.addObject("order", orderDTO);
        return view;
    }
}
