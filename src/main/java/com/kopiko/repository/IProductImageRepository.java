package com.kopiko.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kopiko.entity.ProductImage;

public interface IProductImageRepository extends JpaRepository<ProductImage, Long>{

	ProductImage findByImageID(Long id);
	
}
