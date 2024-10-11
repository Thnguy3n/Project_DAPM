package com.javabackend.shop.Controller.admin;

import com.javabackend.shop.model.dto.ProductDTO;
import com.javabackend.shop.model.request.ProductRequest;
import com.javabackend.shop.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller(value = "productControllerForAdmin")
public class ProductController {
    @Autowired
    private IProductService productService;
    @RequestMapping(value = "/admin/product-list",method = RequestMethod.GET)
    public ModelAndView productList(@ModelAttribute ProductRequest productRequest, HttpServletRequest request) {
        ModelAndView view = new ModelAndView("admin/Products/list");
        view.addObject("productRequest", productRequest);
        view.addObject("product",productService.findAll(productRequest));
        return view;
    }
    @RequestMapping(value = "/admin/product-edit", method = RequestMethod.GET)
    public ModelAndView customerEdit(@ModelAttribute("productEdit") ProductDTO productDTO, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("");
        return mav;
    }
}
