package com.javabackend.shop.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                // Cho phép tất cả mọi người truy cập các tài nguyên tĩnh
                .antMatchers("/", "/trang-chu", "/css/**", "/js/**", "/images/**", "/fonts/**", "/favicon.ico", "/login/**", "/common/**").permitAll()
                // Mọi yêu cầu khác đều cần xác thực
                .anyRequest().authenticated()
                .and()
                .formLogin()
                // Cấu hình trang đăng nhập
                .loginPage("/login")
                .defaultSuccessUrl("/trang-chu", true)
                .permitAll()
                .and()
                .logout()
                // Cấu hình logout
                .logoutUrl("/logout")
                .logoutSuccessUrl("/trang-chu")
                .permitAll();
    }
}
