package com.kopiko.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kopiko.entity.ProductDetail;

@Service
public interface IProductDetailService {
	List<ProductDetail> findAll();
	ProductDetail insert(ProductDetail productDetail);
	ProductDetail update(ProductDetail productDetail);
	boolean delete(Long id);
	ProductDetail findByProductDetailID(Long id);
	List<ProductDetail> findBySize(String size);
	List<ProductDetail> findByColor(String color);
	List<ProductDetail> findBySalePrice(Long minPrice, Long maxPrice);
	
}
