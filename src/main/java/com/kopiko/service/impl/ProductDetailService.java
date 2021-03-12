package com.kopiko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kopiko.entity.ProductDetail;
import com.kopiko.repository.IProductDetailRepository;
import com.kopiko.service.IProductDetailService;

public class ProductDetailService implements IProductDetailService{
	@Autowired
	private IProductDetailRepository productDetailRepository;

	@Override
	public List<ProductDetail> findAll() {
		return productDetailRepository.findAll();
	}

	@Override
	public ProductDetail insert(ProductDetail productDetail) {
		return productDetailRepository.saveAndFlush(productDetail);
	}

	@Override
	public ProductDetail update(ProductDetail productDetail) {
		return productDetailRepository.saveAndFlush(productDetail);
	}

	@Override
	public boolean delete(Long id) {
		productDetailRepository.deleteById(id);
		return true;
	}

	@Override
	public ProductDetail findByProductDetailID(Long id) {
		return productDetailRepository.findByProductDetailID(id);
	}

	@Override
	public List<ProductDetail> findBySize(String size) {
		return productDetailRepository.findBySize(size);
	}

	@Override
	public List<ProductDetail> findByColor(String color) {
		return productDetailRepository.findByColor(color);
	}

	@Override
	public List<ProductDetail> findBySalePrice(Long minPrice, Long maxPrice) {
		return productDetailRepository.findBySalePrice(minPrice, maxPrice);
	}
}
