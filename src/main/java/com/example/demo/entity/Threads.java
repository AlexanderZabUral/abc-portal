package com.example.demo.entity;

//import org.hibernate.annotations.Table;
import jakarta.persistence.Table;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;

@Entity
@Table(name = "tb_thread")
public class Threads {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_thread;
	
	@ManyToOne
	@JoinColumn(name = "id_profile")
	private UserProfile profile;
	
	private String title;
	private String content;
	
	@OneToOne(cascade = CascadeType.ALL, mappedBy = "threads")
	private ThreadTags tags;
	
	public Threads() {
		
	}
	
	public Threads(UserProfile profile, String title, String content, ThreadTags tags) {
		super();
		this.profile = profile;
		this.title = title;
		this.content = content;
		this.tags = tags;
	}

	public int getId_thread() {
		return id_thread;
	}

	public void setId_thread(int id_thread) {
		this.id_thread = id_thread;
	}

	public UserProfile getProfile() {
		return profile;
	}

	public void setProfile(UserProfile profile) {
		this.profile = profile;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public ThreadTags getTags() {
		return tags;
	}

	public void setTags(ThreadTags tags) {
		this.tags = tags;
	}
	
}
