package com.example.demo.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.UserProfileRepository;
import com.example.demo.dao.UserRepository;
import com.example.demo.entity.User;
import com.example.demo.entity.UserProfile;

import jakarta.servlet.http.HttpSession;

@Service
@Transactional
public class LoginService {
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired
	UserProfileRepository profileRepo;

	public User loadUserByEmail(String email) {
		User user = userRepo.findByEmail(email);
		return user;
	}
	
	public UserProfile loadProfile(User user) {
		UserProfile profile = user.getProfile();
		return profile;
	}
	
	public User loginUser(String email, String password) {
		User user = userRepo.findByEmail(email);
		
		if(user.getPassword().equals(password)) {
			return user;
		}
		
		return null;
	}
	
	public UserProfile getCurrentUser(HttpSession session) {
		UserProfile profile = (UserProfile) session.getAttribute("profile");
		if(profile != null) {
			System.out.println("User " + profile.getFirst_name());
		}
		return profile;
	}
	
	public List<UserProfile> listPeople(int id){
		List<UserProfile> listPeople = profileRepo.listPeople(id);
		return listPeople;
	}

}
