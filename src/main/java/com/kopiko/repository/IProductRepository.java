package com.kopiko.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.kopiko.entity.Product;

@Repository
public interface IProductRepository extends JpaRepository<Product, Long>{
	List<Product> findByProductID(Long productID);
	List<Product> findByCategoryID(Long categoryID);
	List<Product> findByBrandID(Long brandID);
	@Query(value = "select  * from Product as p where p.ProductName like ?1", nativeQuery = true)
    List<Product> searchByProductName(String studentName);
}
