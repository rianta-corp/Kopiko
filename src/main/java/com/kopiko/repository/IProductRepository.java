package com.kopiko.repository;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.kopiko.entity.Product;

@Repository
public interface IProductRepository extends JpaRepository<Product, Long>{
	List<Product> findAllByCategoryCategoryId(Long categoryId);
	
	@Query(value = "select * from product as p where p.brand_id = ?1", nativeQuery = true)
	List<Product> findAllByBrandBrandId(Long brandId);
	
    List<Product> findByProductNameIgnoreCaseContaining(String studentName);
    
    @Query(value = "select * from product as p where 100-(p.sale_price/p.price)*100 >= 40", nativeQuery = true)
    List<Product> findByProductSale();
    
	List<Product> findAllBySalePriceBetween(BigDecimal minPrice, BigDecimal maxPrice);
	
	// Search product by category id! trungns4
	@Query(value = "select * from product as p where p.category_id = ?1", nativeQuery = true)
	List<Product> searchProductByCategoryId(Long id);

//	@Query(value = "select * from product where category_id = ?1", nativeQuery = true)
//	List<Product> searchProductByCategoryId(Long id);
	
	@Query(value = "select * from product where category_id = ?1", nativeQuery = true)
	Page<Product> searchProductByCategoryIdWithPage(Long id, Pageable pageable);
}
