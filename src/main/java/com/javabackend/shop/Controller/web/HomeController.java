package com.javabackend.shop.Controller.web;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
    @RequestMapping(value = "/product-Detail", method = RequestMethod.GET)
    public ModelAndView ProductDetailPage() {
        ModelAndView mav = new ModelAndView("web/productDetail");
        return mav;
    }
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return new ModelAndView("redirect:/trang-chu");
    }
}
