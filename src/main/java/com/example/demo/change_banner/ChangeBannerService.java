package com.example.demo.change_banner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.UserProfileRepository;
import com.example.demo.entity.UserProfile;

@Service
@Transactional
public class ChangeBannerService {
	
	@Autowired
	UserProfileRepository profileRepo;
	
	public UserProfile changeBanner(int id, String banner) {
		UserProfile profile = profileRepo.findById(id).get();
		
		profile.setBanner("images/banner/" + banner + ".jpg");
		profileRepo.save(profile);
		
		return profile;
	}
}
