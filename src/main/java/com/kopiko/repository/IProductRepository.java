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
public interface IProductRepository extends JpaRepository<Product, Long> {
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

	// Search product of category id by product id
	@Query(value = "select   *\r\n" + "from product as pr\r\n"
			+ "where    pr.category_id = (select p.category_id from product as p where p.product_id = ?1)  ", nativeQuery = true)
	List<Product> searchProductOfCategoryByProductId(Long id);

	// Search list product by categoryid and brandid for views product offer
	@Query(value = "select  top(12) pr.product_id, pr.brand_id, pr.category_id,  pr.price, pr.product_name, pr.sale_price, pr.date_created, pr.description, pr.status\r\n"
			+ "from product as pr, (select p.brand_id, p.category_id from product as p where p.product_id = ?1) temp1 \r\n"
			+ "where   pr.brand_id = temp1.brand_id or pr.category_id = temp1.category_id  ", nativeQuery = true)
	List<Product> searchProductByCategoryIdOrBrandId(Long id);

//	@Query(value = "select * from product where category_id = ?1", nativeQuery = true)
//	List<Product> searchProductByCategoryId(Long id);

	@Query(value = "select * from product where category_id = ?1", nativeQuery = true)
	Page<Product> searchProductByCategoryIdWithPage(Long id, Pageable pageable);

	// Search product nearest month
//	@Query(value = "select  p.* from product as p left join ( select pd.product_id, sum(pd.quantity) as quantity_of_product from product_detail as pd join order_detail as od on od.product_detail_id = pd.product_detail_id join [order] as o on o.order_id = od.order_id\r\n" + 
//			"	where DATEDIFF(MONTH,CAST( o.date_created AS date), CONVERT(date,GETDATE())) = 1 OR DATEDIFF(MONTH,CAST( o.date_created AS date), CONVERT(date,GETDATE())) = 0\r\n" + 
//			"	group by pd.product_id) as pd on p.product_id = pd.product_id\r\n" + 
//			"where p.status = 1 order by pd.quantity_of_product desc", nativeQuery = true)
//	Page<Product> searchProductNearestMonth(int id, Pageable pageable);
}