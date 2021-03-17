/**
 * 
 * @author ADMIN
 * @date Mar 11, 2021
 */

package com.kopiko.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
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
}
