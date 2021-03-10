package com.kopiko.repository;

import org.springframework.data.repository.CrudRepository;

import com.kopiko.entity.ProductImage;

public interface ProductImageRepository extends CrudRepository<ProductImage, Long>{

	ProductImage findByImageID(Long id);
	
}
