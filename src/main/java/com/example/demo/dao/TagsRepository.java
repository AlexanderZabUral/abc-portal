package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Tags;

@Repository
public interface TagsRepository extends JpaRepository<Tags, Integer>{

}
