package com.example.demo.entity;

//import org.hibernate.annotations.Table;
import jakarta.persistence.Table;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;


@Entity
@Table(name = "tb_apply_job")
public class ApplyJob {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_apply_job;
	
	@ManyToOne
	@JoinColumn(name = "id_profile")
	private UserProfile userProfile;
	
	@ManyToOne
	@JoinColumn(name = "id_job")
	private Job job;
	
	private String status;

	public ApplyJob() {
		
	}

	public ApplyJob(UserProfile userProfile, Job job, String status) {
		super();
		this.userProfile = userProfile;
		this.job = job;
		this.status = status;
	}

	public int getId_apply_job() {
		return id_apply_job;
	}

	public void setId_apply_job(int id_apply_job) {
		this.id_apply_job = id_apply_job;
	}

	public UserProfile getUserProfile() {
		return userProfile;
	}

	public void setUserProfile(UserProfile userProfile) {
		this.userProfile = userProfile;
	}

	public Job getJob() {
		return job;
	}

	public void setJob(Job job) {
		this.job = job;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
