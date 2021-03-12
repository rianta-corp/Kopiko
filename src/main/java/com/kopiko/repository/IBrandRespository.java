package com.kopiko.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kopiko.entity.Brand;

@Repository
public interface IBrandRespository extends JpaRepository<Brand, Long>{
	
}
