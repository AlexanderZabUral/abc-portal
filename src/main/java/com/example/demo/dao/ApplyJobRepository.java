package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.ApplyJob;




@Repository
public interface ApplyJobRepository extends JpaRepository<ApplyJob, Integer>{

}
