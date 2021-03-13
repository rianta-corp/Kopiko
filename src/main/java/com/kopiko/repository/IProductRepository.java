package com.kopiko.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.kopiko.entity.Product;

@Repository
public interface IProductRepository extends JpaRepository<Product, Long>{
	List<Product> findAllByProductId(Long productId);
	List<Product> findAllByCategoryCategoryId(Long categoryId);
	
	@Query(value = "select * from product as p where p.brand_id = ?1", nativeQuery = true)
	List<Product> findAllByBrandBrandId(Long brandId);
	
	@Query(value = "select * from product as p where p.student_name like ?1", nativeQuery = true)
    List<Product> searchByProductName(String studentName);
}
