/**
 * 
 * @author ADMIN
 * @date Mar 11, 2021
 */

package com.kopiko.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.kopiko.entity.OrderEntity;

@Repository
public interface IOrderRepository  extends JpaRepository<OrderEntity, Long>{
	List<OrderEntity> findAllByOrderStatusOrderStatusId(Long statusId);

	/**
	 * @param accountId
	 * @return
	 */
	List<OrderEntity> findAllByAccountAccountId(Long accountId);

	/**
	 * @param username
	 * @return
	 */
	
	@Query(value="select o.* from [order] as o join account as a on o.account_id = a.account_id where a.username = ?1", nativeQuery = true)
	List<OrderEntity> findAllByUsername(String username);

	/**
	 * @param statusId
	 * @return
	 */
	OrderEntity findByOrderIdAndAccountAccountId(Long orderId, Long accountId);
}
