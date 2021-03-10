package com.kopiko.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kopiko.entity.Brand;

public interface IBrandRespository extends JpaRepository<Brand, Long>{
	
}
