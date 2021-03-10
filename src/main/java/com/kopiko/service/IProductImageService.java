package com.kopiko.service;

import java.util.List;

import com.kopiko.entity.ProductImage;

public interface IProductImageService {
	List<ProductImage> getAll();
	boolean insert(ProductImage productImage);
	boolean update(ProductImage productImage);
	boolean delete(Long id);
	ProductImage findByImageId(Long id);
}
