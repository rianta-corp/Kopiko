package com.kopiko.repository;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.kopiko.entity.ProductDetail;

@Repository
public interface IProductDetailRepository extends JpaRepository<ProductDetail, Long>{
	List<ProductDetail> findAllByProductProductId(Long productId);
	ProductDetail findByProductDetailId(Long productDetailId);
	List<ProductDetail> findAllByColor(String color);
	List<ProductDetail> findAllBySize(String size);
	
	@Query(value = "select * from product_detail where sale_price between ?1 and ?2", nativeQuery = true)
	List<ProductDetail> findAllBySalePrice(BigDecimal minPrice, BigDecimal maxPrice);
	
}
