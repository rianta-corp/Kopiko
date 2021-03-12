package com.kopiko.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.kopiko.entity.ProductDetail;

@Repository
public interface IProductDetailRepository extends JpaRepository<ProductDetail, Long>{
	List<ProductDetail> findByProductID(Long productID);
	ProductDetail findByProductDetailID(Long productDetailID);
	List<ProductDetail> findByColor(String color);
	List<ProductDetail> findBySize(String size);
	
	@Query(value = "select * from ProductDetail where SalePrice between ?1 and ?2", nativeQuery = true)
	List<ProductDetail> findBySalePrice(Long minPrice, Long maxPrice);
	
}
