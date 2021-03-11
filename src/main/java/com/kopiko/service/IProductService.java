package com.kopiko.service;

import java.util.List;

import com.kopiko.entity.Product;

public interface IProductService {
	List<Product> findAll();
	boolean insert(Product product);
	boolean update(Product product);
	boolean delete(Long id);
	Product findByProductID(Long id);
	List<Product> findByCategoryID(Long categoryID);
	List<Product> findByBrandID(Long brandID);
	List<Product> searchByProductName(String text);
}
