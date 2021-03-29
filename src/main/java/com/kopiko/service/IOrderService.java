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
	/**
	 * @param username
	 * @return
	 */
	List<OrderEntity> findAllByUsername(String username);
	/**
	 * Tìm kiếm xem orderId có thuộc tài khoản accountId ko...Nếu có trả về order.
	 * @param orderId
	 * @param accountId
	 * @return
	 */
	OrderEntity findByOrderIdAndAccountId(Long orderId, Long accountId);
}
