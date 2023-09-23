package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.SearchProfile;

@Repository
public interface SearchProfileRepository extends JpaRepository<SearchProfile, Integer>{
	@Query(value = "SELECT UP.id_profile, UP.banner, UP.city, UP.country, UP.first_name, UP.last_name, UP.picture, UP.about, UP.id_user, J.id_job, J.company_image, J.company_name, J.job_description, J.job_level, J.job_name, J.job_time "
	      + "FROM tb_user_profile AS UP "
	      + "LEFT JOIN tb_jobs AS J ON UP.id_job = J.id_job "
	      + "WHERE UP.first_name LIKE '%' :keyword '%' "
	      + "OR UP.last_name LIKE '%' :keyword '%' "
	      + "OR UP.country LIKE '%' :keyword '%' "
	      + "OR UP.city LIKE '%' :keyword '%' "
	      + "OR J.company_name LIKE '%' :keyword '%'", 
	      nativeQuery = true)
	public List<SearchProfile> search(@Param("keyword") String keyword);
}
