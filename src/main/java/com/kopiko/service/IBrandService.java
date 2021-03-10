package com.kopiko.service;

import java.util.List;

import com.kopiko.entity.Brand;
import com.kopiko.entity.ProductImage;

public interface IBrandService {
	List<ProductImage> getAll();
	boolean insert(Brand brand);
	boolean update(Brand brand);
	boolean delete(Long id);
	ProductImage findByImageId(Long id);
	
	
}
