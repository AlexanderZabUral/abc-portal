package com.example.demo.forgot_password;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.ForgotPasswordRepository;
import com.example.demo.entity.User;

@Service
@Transactional
public class ForgotPasswordService {

	@Autowired
	ForgotPasswordRepository forgotPasswordRepo;

	public User findUser(String email) {
		User user = forgotPasswordRepo.findByEmail(email);
		return user;
	}

	public void forgotPassword(User userFP) {
		userFP.setPassword("password123");
		forgotPasswordRepo.save(userFP);
	}
}
