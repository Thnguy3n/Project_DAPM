package com.javabackend.shop.service.Impl;

import com.javabackend.shop.converter.UserConverter;
import com.javabackend.shop.model.dto.UserDTO;
import com.javabackend.shop.repository.UserRepository;
import com.javabackend.shop.service.IUserService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    private UserConverter userConverter;
    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDTO findOneByUserNameAndStatus(String username, int status) {
        return userConverter.convertToDto(userRepository.findOneByUserNameAndStatus(username, status));
    }
}
