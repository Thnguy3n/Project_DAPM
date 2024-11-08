package com.javabackend.shop.service.Impl;

import com.javabackend.shop.entity.CartEntity;
import com.javabackend.shop.entity.CartItemEntity;
import com.javabackend.shop.entity.ProductEntity;
import com.javabackend.shop.entity.UserEntity;
import com.javabackend.shop.model.dto.CartDTO;
import com.javabackend.shop.model.dto.CartItemDTO;
import com.javabackend.shop.repository.CartItemRepository;
import com.javabackend.shop.repository.CartRepository;
import com.javabackend.shop.repository.ProductRepository;
import com.javabackend.shop.repository.UserRepository;
import com.javabackend.shop.security.utils.SecurityUtils;
import com.javabackend.shop.service.ICartService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CartServiceImpl implements ICartService {
    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    private CartItemRepository cartItemRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private CartRepository cartRepository;
    @Autowired
    private ProductRepository productRepository;

    @Override
    public void addToCart(CartItemDTO cartItemDTO, Long userId, boolean isUpdateQuantity) {
        CartEntity cartEntity = cartRepository.findCartByUserId(userId)
                .orElseGet(() -> {
                    CartEntity newCartEntity = new CartEntity();
                    newCartEntity.setUserEntity(userRepository.findById(userId).get());
                    return cartRepository.save(newCartEntity);
                });

        ProductEntity productEntity = productRepository.findById(cartItemDTO.getProductId()).get();
        Optional<CartItemEntity> existingCartItem = cartEntity.getCartItemEntities().stream()
                .filter(item -> item.getProductEntity().getId().equals(cartItemDTO.getProductId()) &&
                        item.getSize().equals(cartItemDTO.getSize()))
                .findFirst();

        if (existingCartItem.isPresent()) {
            CartItemEntity cartItemEntity = existingCartItem.get();

            if (isUpdateQuantity) {
                cartItemEntity.setQuantity(cartItemDTO.getQuantity());
            } else {
                cartItemEntity.setQuantity(cartItemEntity.getQuantity() + cartItemDTO.getQuantity());
            }

            cartItemEntity.setTotal((cartItemEntity.getPrice() - cartItemEntity.getPrice() * productEntity.getDiscount() / 100) * cartItemEntity.getQuantity());
            cartItemRepository.save(cartItemEntity);
        } else {
            CartItemEntity newCartItemEntity = new CartItemEntity();
            newCartItemEntity.setCartEntity(cartEntity);
            newCartItemEntity.setProductEntity(productEntity);
            newCartItemEntity.setSize(cartItemDTO.getSize());
            newCartItemEntity.setQuantity(cartItemDTO.getQuantity());
            newCartItemEntity.setPrice(productEntity.getPrice());
            newCartItemEntity.setTotal((newCartItemEntity.getPrice() - newCartItemEntity.getPrice() * productEntity.getDiscount() / 100) * newCartItemEntity.getQuantity());
            cartItemRepository.save(newCartItemEntity);
        }
    }


    @Override
    public CartDTO loadCart(Long userId) {
        CartEntity cartEntity = cartRepository.findCartByUserId(userId).get();
        CartDTO cartDTO = new CartDTO();
        cartDTO.setId(cartEntity.getId());
        cartDTO.setUserId(userId);
        List<CartItemDTO> cartItems = cartEntity.getCartItemEntities().stream().map(item -> {
            CartItemDTO cartItemDTO = new CartItemDTO();
            cartItemDTO.setId(item.getId());
            cartItemDTO.setProductId(item.getProductEntity().getId());
            cartItemDTO.setProductName(item.getProductEntity().getTitle());
            cartItemDTO.setImage(item.getProductEntity().getImage());
            cartItemDTO.setSize(item.getSize());
            cartItemDTO.setQuantity(item.getQuantity());
            cartItemDTO.setPrice(item.getPrice());
            cartItemDTO.setDiscount(item.getProductEntity().getDiscount());
            cartItemDTO.setTotal(item.getTotal());
            cartItemDTO.setCartId(cartEntity.getId());
            return cartItemDTO;
        }).collect(Collectors.toList());
        cartDTO.setItems(cartItems);
            return cartDTO;
    }

    @Override
    public void removeFromCart(Long cartItemId) {
        Optional<CartItemEntity> cartItemEntity= cartItemRepository.findById(cartItemId);
        cartItemRepository.delete(cartItemEntity.get());
    }

    @Override
    public void addOrUpdateCartItem(CartItemDTO cartItemDTO) {
        CartItemEntity cartItemEntity = cartItemRepository.findById(cartItemDTO.getId()).get();
        ProductEntity productEntity = productRepository.findById(cartItemDTO.getProductId()).get();
        cartItemEntity.setQuantity(cartItemDTO.getQuantity());
        cartItemEntity.setPrice(cartItemDTO.getPrice());
        cartItemEntity.setTotal(cartItemDTO.getPrice() * cartItemDTO.getQuantity());
        cartItemEntity.setSize(cartItemDTO.getSize());
    }

    @Override
    public void removeCartItem(Long cartId) {
        List<CartItemEntity> cartItemEntity= cartItemRepository.findCartItemEntitiesByCartId(cartId);
        cartItemRepository.deleteAll(cartItemEntity);
    }

}
