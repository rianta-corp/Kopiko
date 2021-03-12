package com.kopiko.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kopiko.entity.Product;

@Service
public interface IProductService {
	List<Product> findAll();
	Product insert(Product product);
	Product update(Product product);
	boolean delete(Long id);
	Product findByProductID(Long id);
	List<Product> findByCategoryID(Long categoryID);
	List<Product> findByBrandID(Long brandID);
	List<Product> searchByProductName(String text);
}
