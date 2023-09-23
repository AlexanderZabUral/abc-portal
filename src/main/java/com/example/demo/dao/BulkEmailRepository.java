package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.BulkEmail;

@Repository
public interface BulkEmailRepository extends JpaRepository<BulkEmail, Integer> {

}
