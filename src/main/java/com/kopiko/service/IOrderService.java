/**
 * 
 * @author ADMIN
 * @date Mar 11, 2021
 */

package com.kopiko.service;

import java.util.List;

import com.kopiko.entity.OrderEntity;

public interface IOrderService {

	/**
	 * @return
	 */
	List<OrderEntity> findAll();
	List<OrderEntity> findAllByOrderStatusOrderStatusId(Long orderStatusId);
	List<OrderEntity> findAllByAccountAccountId(Long accountId);
	OrderEntity findByOrderId(Long id);
	OrderEntity updateStatus(Long orderId, Long statusId);
	/**
	 * @param order
	 * @return
	 */
	OrderEntity save(OrderEntity order);
}
