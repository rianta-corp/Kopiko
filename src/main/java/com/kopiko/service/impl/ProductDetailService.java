package com.kopiko.service.impl;

import java.math.BigDecimal;
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
	public ProductDetail findByProductDetailId(Long id) {
		return productDetailRepository.findByProductDetailId(id);
	}

	@Override
	public List<ProductDetail> findAllBySize(String size) {
		return productDetailRepository.findAllBySize(size);
	}

	@Override
	public List<ProductDetail> findAllByColor(String color) {
		return productDetailRepository.findAllByColor(color);
	}

	@Override
	public List<ProductDetail> findAllBySalePrice(BigDecimal minPrice, BigDecimal maxPrice) {
		return productDetailRepository.findAllBySalePrice(minPrice, maxPrice);
	}
}
