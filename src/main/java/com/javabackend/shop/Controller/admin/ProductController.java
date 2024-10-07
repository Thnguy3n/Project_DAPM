package com.javabackend.shop.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "productControllerForAdmin")
public class ProductController {
    @RequestMapping(value = "/admin/Products/product-list")
    public ModelAndView productList() {
        ModelAndView view = new ModelAndView("admin/Products/list");
        return view;
    }
}
