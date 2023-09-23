package com.example.demo.job;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.ApplyJobRepository;
import com.example.demo.dao.JobRepository;
import com.example.demo.entity.ApplyJob;
import com.example.demo.entity.Job;
import com.example.demo.entity.UserProfile;

@Service
@Transactional
public class JobService {
	
	@Autowired
	JobRepository jobRepo;
	
	@Autowired
	ApplyJobRepository applyRepo;
	
	public List<Job> listJob(){
		List<Job> listJob = (List<Job>) jobRepo.findAll();
		return listJob;
	}
	
	public List<Job> searchJob(String keyword){
		List<Job> listJob = jobRepo.search(keyword);
		return listJob;
	}
	
	public List<ApplyJob> listApplyJob(){
		List<ApplyJob> listApply = (List<ApplyJob>) applyRepo.findAll();
		return listApply;
	}

	public Job findJob(int id) {
		Job job = jobRepo.findById(id).get();
		return job;
	}
	
	public void applyJob(UserProfile profile, Job job) {
		ApplyJob apply = new ApplyJob(profile, job, "PENDING");
		
		applyRepo.save(apply);
	}
}
