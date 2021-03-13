package com.kopiko.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.entity.ProductImage;
import com.kopiko.repository.IProductImageRepository;
import com.kopiko.service.IProductImageService;

@Service
public class ProductImageService implements IProductImageService{
	@Autowired
	private IProductImageRepository productImageRepository;

	@Override
	public List<ProductImage> findAll() {
		return (List<ProductImage>) productImageRepository.findAll();
	}

	@Override
	public ProductImage insert(ProductImage productImage) {
		return productImageRepository.saveAndFlush(productImage);
	}

	@Override
	public ProductImage update(ProductImage productImage) {
		return productImageRepository.save(productImage);
	}

	@Override
	public boolean delete(Long id) {
		productImageRepository.deleteById(id);
		return true;
	}

	@Override
	public ProductImage findByImageId(Long id) {
		ProductImage result = productImageRepository.findByImageId(id);
		return result;
	}

	@Override
	public List<ProductImage> findAllByImageIdAndAccountId(Long productId, Long accountId) {
		return productImageRepository.findAllByProductProductIdAndAccountAccountId(productId, accountId);
	}
	
	
	
}
