package com.javabackend.shop.api.Web;

import com.javabackend.shop.model.dto.CartDTO;
import com.javabackend.shop.model.dto.CartItemDTO;
import com.javabackend.shop.model.dto.UserDTO;
import com.javabackend.shop.security.utils.SecurityUtils;
import com.javabackend.shop.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController(value = "cartAPIOfUser")
@RequestMapping("/api/cart")
public class ShoppingCartAPI {
    @Autowired
    private ICartService cartService;

    @PostMapping("/addOrUpdate")
    @ResponseBody
    public ResponseEntity<CartItemDTO> addOrUpdateCartItem(
            @RequestBody CartItemDTO cartItemDTO,
            @RequestParam Long userId,
            @RequestParam(required = false, defaultValue = "false") boolean isUpdateQuantity) {

        cartService.addToCart(cartItemDTO, userId, isUpdateQuantity);
        return ResponseEntity.ok(cartItemDTO);
    }

    @GetMapping("/items")
    @ResponseBody
    public CartDTO viewCart(@RequestParam Long userId) {
        if (SecurityContextHolder.getContext().getAuthentication() != null &&
                SecurityContextHolder.getContext().getAuthentication().isAuthenticated() &&
                !(SecurityContextHolder.getContext().getAuthentication() instanceof AnonymousAuthenticationToken)) {
            userId = SecurityUtils.getPrincipal().getId();
            return cartService.loadCart(userId);
        }
        return new CartDTO();
    }

    @PostMapping("/remove")
    @ResponseBody
    public void removeItemFromCart( @RequestBody Long cartItemId) {
        cartService.removeFromCart(cartItemId);
    }

}
