package com.kopiko.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kopiko.entity.ProductDetail;

@Service
public interface IProductDetailService {
	List<ProductDetail> findAll();
	ProductDetail insert(ProductDetail productDetail);
	ProductDetail update(ProductDetail productDetail);
	boolean delete(Long Id);
	ProductDetail findByProductDetailId(Long Id);
	List<ProductDetail> findAllBySize(String size);
	
}
