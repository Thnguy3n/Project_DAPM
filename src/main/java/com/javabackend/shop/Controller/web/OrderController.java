package com.javabackend.shop.Controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller (value = "ordercontroller")
public class OrderController {
    @RequestMapping(value = "/order",method = RequestMethod.GET)
    public ModelAndView OrderPage() {
        ModelAndView view = new ModelAndView("web/Checkout");
        return view;
    }
}
