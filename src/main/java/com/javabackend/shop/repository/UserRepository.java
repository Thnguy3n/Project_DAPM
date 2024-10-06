package com.javabackend.shop.repository;

import com.javabackend.shop.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserEntity, Long> {
    UserEntity findOneByUserNameAndStatus(String username, int status);
}
