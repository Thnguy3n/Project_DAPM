package com.javabackend.shop.Controller.web;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;
@Controller(value = "homeControllerOfWeb")

public class HomeController {
    @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)

    public ModelAndView homePage() {

        ModelAndView mav = new ModelAndView("home");

        return mav;

    }
    @RequestMapping(value = "/product-category", method = RequestMethod.GET)
    public ModelAndView productCategoryPage() {
        ModelAndView mav = new ModelAndView("web/productCategory");
        return mav;
    }
    @RequestMapping(value = "/category-Tee", method = RequestMethod.GET)
    public ModelAndView CategoryTeePage() {
        ModelAndView mav = new ModelAndView("web/Cate1");
        return mav;
    }
    @RequestMapping(value = "/category-Pants", method = RequestMethod.GET)
    public ModelAndView CategoryPantsPage() {
        ModelAndView mav = new ModelAndView("web/Cate2");
        return mav;
    }
}
