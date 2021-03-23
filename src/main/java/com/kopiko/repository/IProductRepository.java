package com.kopiko.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.kopiko.dto.ProductDTO;
import com.kopiko.entity.Product;

@Repository
public interface IProductRepository extends JpaRepository<Product, Long>{
	List<Product> findAllByProductId(Long productId);
	List<Product> findAllByCategoryCategoryId(Long categoryId);
	
	@Query(value = "select * from product as p where p.brand_id = ?1", nativeQuery = true)
	List<Product> findAllByBrandBrandId(Long brandId);
	
    List<Product> findByProductNameIgnoreCaseContaining(String studentName);
    
    @Query(value = "select * from product as p join product_detail as pd on p.product_id = pd.product_id where 100-(pd.sale_price/pd.price)*100 >= 40", nativeQuery = true)
    List<Product> findByProductSale();
}
