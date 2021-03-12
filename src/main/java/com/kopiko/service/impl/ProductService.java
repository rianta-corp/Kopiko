package com.kopiko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kopiko.entity.Product;
import com.kopiko.repository.IProductRepository;
import com.kopiko.service.IProductService;

public class ProductService implements IProductService{
	@Autowired
	private IProductRepository productRepository;
	
	@Override
	public List<Product> findAll() {
		return productRepository.findAll();
	}

	@Override
	public Product insert(Product product) {
		return productRepository.saveAndFlush(product);
	}

	@Override
	public Product update(Product product) {
		return productRepository.saveAndFlush(product);
	}

	@Override
	public boolean delete(Long id) {
		productRepository.deleteById(id);
		return true;
	}

	@Override
	public Product findByProductID(Long id) {
		return productRepository.getOne(id);
	}

	@Override
	public List<Product> findByCategoryID(Long categoryID) {
		return productRepository.findByCategoryID(categoryID);
	}

	@Override
	public List<Product> findByBrandID(Long brandID) {
		return productRepository.findByBrandID(brandID);
	}

	@Override
	public List<Product> searchByProductName(String text) {
		return productRepository.searchByProductName("%"+text+"%");
	}

}
