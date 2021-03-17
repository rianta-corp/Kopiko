/**
 * 
 * @author ADMIN
 * @date Mar 11, 2021
 */

package com.kopiko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.entity.OrderEntity;
import com.kopiko.repository.IOrderRepository;
import com.kopiko.service.IOrderService;

@Service
public class OrderServiceImpl implements IOrderService {
	
	@Autowired
	private IOrderRepository orderRepository;
	
	
	@Override
	public List<OrderEntity> findAll() {
		return orderRepository.findAll();
	}


	@Override
	public List<OrderEntity> findAllByOrderStatusOrderStatusId(Long id) {
		// TODO Auto-generated method stub
		return orderRepository.findAllByOrderStatusOrderStatusId(id);
	}


	@Override
	public List<OrderEntity> findAllByAccountAccountId(Long accountId) {
		// TODO Auto-generated method stub
		return orderRepository.findAllByAccountAccountId(accountId);
	}

}
