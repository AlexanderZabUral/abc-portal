package com.example.demo.entity;

//import org.hibernate.annotations.Table;
import jakarta.persistence.Table;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;

@Entity
@Table(name = "tb_users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_user;

	private String email;
	private String password;
	private Boolean enabled;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "user")
	private UserProfile profile;

	public User() {

	}

	public User(String email, String password, Boolean enabled, UserProfile profile) {
		super();
		this.email = email;
		this.password = password;
		this.enabled = enabled;
		this.profile = profile;
	}

	public long getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserProfile getProfile() {
		return profile;
	}

	public void setProfile(UserProfile profile) {
		this.profile = profile;
	}

	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

}
