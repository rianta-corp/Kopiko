package com.kopiko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.entity.Product;
import com.kopiko.repository.IProductRepository;
import com.kopiko.service.IProductService;

@Service
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
	public Product findByProductId(Long id) {
		return productRepository.getOne(id);
	}

	@Override
	public List<Product> findAllByCategoryId(Long categoryId) {
		return productRepository.findAllByCategoryCategoryId(categoryId);
	}

	@Override
	public List<Product> findAllByBrandId(Long brandId) {
		return productRepository.findAllByBrandBrandId(brandId);
	}

	@Override
	public List<Product> findByProductNameIgnoreCaseContaining(String text) {
		return productRepository.findByProductNameIgnoreCaseContaining(text);
	}

	@Override
	public List<Product> findByProductSale() {
		return productRepository.findByProductSale();
	}

	@Override
	public Product save(Product product) {
		Product data;
		if(product.getProductId() != null) { //update
			data = productRepository.getOne(product.getProductId());
			if(product.getBrand() != null) data.setBrand(product.getBrand());
			if(product.getCategory() != null) data.setCategory(product.getCategory());
			if(product.getProductName() != null) data.setProductName(product.getProductName());
			if(product.getDescription() != null) data.setDescription(product.getDescription());
			if(product.getStatus() != null) data.setStatus(product.getStatus());
			if(product.getListComment() != null) data.setListComment(product.getListComment());
			if(product.getListProductDetail() != null) data.setListProductDetail(product.getListProductDetail());
			if(product.getListProductImage() != null) data.setListProductImage(product.getListProductImage());
		}
		else data = product;
		return productRepository.saveAndFlush(data);
	}

}
