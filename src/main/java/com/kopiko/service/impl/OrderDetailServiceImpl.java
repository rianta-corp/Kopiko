/**
 * 
 * @author ADMIN
 * @date Mar 11, 2021
 */

package com.kopiko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.entity.OrderDetailEntity;
import com.kopiko.repository.IOrderDetailRepository;
import com.kopiko.service.IOrderDetailService;

@Service
public class OrderDetailServiceImpl implements IOrderDetailService{

	@Autowired
	private IOrderDetailRepository orderDetailRepository;
	@Override
	public List<OrderDetailEntity> findAll() {
		// TODO Auto-generated method stub
		return orderDetailRepository.findAll();
	}
	@Override
	public List<OrderDetailEntity> findAllByOrderId(Long orderId) {
		List<OrderDetailEntity> list = orderDetailRepository.findAllByOrderOrderId(orderId);
		return list;
	}

}
