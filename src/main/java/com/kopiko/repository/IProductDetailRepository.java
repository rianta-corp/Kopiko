package com.kopiko.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.kopiko.entity.ProductDetail;

@Repository
public interface IProductDetailRepository extends JpaRepository<ProductDetail, Long>{
	List<ProductDetail> findAllByProductProductId(Long productId);
	ProductDetail findByProductDetailId(Long productDetailId);
	List<ProductDetail> findAllBySize(String size);
	/**
	 * @param productId
	 * @param size
	 * @return
	 */
	
	@Query(value = "select top 1 pd.* from product as p join product_detail as pd on p.product_id = pd.product_id where p.product_id = ?1 and size = ?2 and p.status = 1", nativeQuery = true)
	ProductDetail findByProductIdAndSize(Long productId, String size);
	
	 @Query(value = "select *from product_detail where product_id = ?1 and size = ?2", nativeQuery = true)
	    ProductDetail findByProductIdAndSize(Long productId, String size);
	
}
