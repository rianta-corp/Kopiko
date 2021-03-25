package com.kopiko.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kopiko.entity.BrandEntity;

@Repository
public interface IBrandRepository extends JpaRepository<BrandEntity, Long>{
	
	BrandEntity findByBrandId(Long brandId);
	
	BrandEntity findByBrandName(String brandName);
}