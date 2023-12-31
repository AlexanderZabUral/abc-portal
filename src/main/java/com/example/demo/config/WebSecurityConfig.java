package com.example.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;


import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import org.springframework.security.web.SecurityFilterChain;



@Configuration
@EnableWebSecurity
public class WebSecurityConfig {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(10);
    }
    
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
    	http.csrf().disable()
    	.authorizeHttpRequests()
    			.requestMatchers("/register").permitAll()
    			.requestMatchers("localhost:8080").permitAll()
    			
    			.anyRequest()
    	        .permitAll() 
    	        .and()
    	        .formLogin().loginPage("/login")
    	        .and()
    	        .httpBasic();
              
return http.build();
    
    }
		
}






