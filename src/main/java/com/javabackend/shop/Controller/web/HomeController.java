package com.javabackend.shop.Controller.web;
import com.javabackend.shop.model.dto.CategoryDTO;
import com.javabackend.shop.model.dto.ProductDTO;
import com.javabackend.shop.model.dto.UserDTO;
import com.javabackend.shop.security.utils.SecurityUtils;
import com.javabackend.shop.service.Impl.CategoryServiceImpl;
import com.javabackend.shop.service.Impl.ProductServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller(value = "homeControllerOfWeb")

public class HomeController {
    @Autowired
    private ProductServiceImpl productService;
    @Autowired
    private CategoryServiceImpl categoryService;
    @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("home");
        ProductDTO productDTO = new ProductDTO();
        mav.addObject("Bigsale",productService.findProductBigDiscount(productDTO));
        return mav;

    }
    @RequestMapping(value = "/payment_success", method = RequestMethod.GET)
    public ModelAndView paymentSuccessPage() {
        ModelAndView mav = new ModelAndView("web/PaymentSuccessful");
        return mav;
    }
    @RequestMapping(value = "/payment_fail", method = RequestMethod.GET)
    public ModelAndView paymentFailPage() {
        ModelAndView mav = new ModelAndView("web/PaymentFail");
        return mav;
    }
    @RequestMapping(value = "/product-category", method = RequestMethod.GET)
    public ModelAndView productCategoryPage(@ModelAttribute("product") ProductDTO productDTO) {
        ModelAndView mav = new ModelAndView("web/productCategory");
        mav.addObject("productList", productService.findAllProducts(productDTO));
        mav.addObject("categoryList", categoryService.findAll());
//        mav.addObject("productView", productService.findProductById(productDTO.getId()));
        return mav;
    }
    @RequestMapping(value = "/product-category-{id}", method = RequestMethod.GET)
    public ModelAndView productCategory(@PathVariable("id") Long Id, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("web/productCategory");
        mav.addObject("productList1",productService.findProductByCategoryId(Id));
        mav.addObject("categoryList", categoryService.findAll());
        return mav;
    }

    @RequestMapping(value="/product-detail-{id}",method = RequestMethod.GET)
    public ModelAndView ProductDetailPage(@PathVariable("id") Long id , HttpServletRequest request){
        ModelAndView mav = new ModelAndView("web/productDetail");
        ProductDTO productDTO = productService.findProductById(id);
        if (SecurityContextHolder.getContext().getAuthentication() != null &&
                SecurityContextHolder.getContext().getAuthentication().isAuthenticated() &&
                !(SecurityContextHolder.getContext().getAuthentication() instanceof AnonymousAuthenticationToken)) {
            UserDTO userDTO = new UserDTO();
            userDTO.setId(SecurityUtils.getPrincipal().getId());
            mav.addObject("user", userDTO);
        }
        mav.addObject("productDTO", productDTO);
        mav.addObject("Bigsale2",productService.findProductBigDiscount(productDTO));
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
