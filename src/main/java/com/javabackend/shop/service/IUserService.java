package com.javabackend.shop.service;

import com.javabackend.shop.model.dto.UserDTO;

public interface IUserService {
    UserDTO findOneByUserNameAndStatus(String username, int status);
}
