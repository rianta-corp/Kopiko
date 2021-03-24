package com.kopiko.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kopiko.entity.ProductDetail;

@Repository
public interface IProductDetailRepository extends JpaRepository<ProductDetail, Long>{
	List<ProductDetail> findAllByProductProductId(Long productId);
	ProductDetail findByProductDetailId(Long productDetailId);
	List<ProductDetail> findAllBySize(String size);
	
	
}
