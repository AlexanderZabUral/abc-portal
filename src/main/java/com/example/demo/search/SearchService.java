package com.example.demo.search;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.SearchProfileRepository;
import com.example.demo.dao.UserProfileRepository;
import com.example.demo.entity.SearchProfile;
import com.example.demo.entity.UserProfile;

@Service
@Transactional
public class SearchService {

	@Autowired
	UserProfileRepository profileRepo;
	
	@Autowired
	SearchProfileRepository searchRepo;

	public List<SearchProfile> search(String keyword) {
		return searchRepo.search(keyword);
	}

	public UserProfile loadUserById(int id) {
		UserProfile profile = profileRepo.findById(id).get();
		return profile;
	}
}
