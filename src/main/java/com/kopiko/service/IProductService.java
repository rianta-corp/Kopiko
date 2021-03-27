package com.kopiko.service;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.stereotype.Service;

import com.kopiko.entity.Product;

@Service
public interface IProductService {
	List<Product> findAll();
	Product insert(Product product);
	Product update(Product product);
	Product save(Product product);
	boolean delete(Long Id);
	Product findByProductId(Long Id);
	List<Product> findAllByCategoryId(Long categoryId);
	List<Product> findAllByBrandId(Long brandId);
	List<Product> findByProductNameIgnoreCaseContaining(String text);
	List<Product> findByProductSale();
	List<Product> findAllBySalePrice(BigDecimal minPrice, BigDecimal maxPrice);
	//Search product by category id! trungns4
	List<Product> searchProductByCategoryId(Long id);
}
