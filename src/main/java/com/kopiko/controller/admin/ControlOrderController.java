/**
 * 
 */
package com.kopiko.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kopiko.entity.OrderEntity;
import com.kopiko.service.IOrderService;

/**
 * @author rianta9
 * @datecreated 16 thg 3, 2021 11:09:03
 */

@RestController
@RequestMapping("api/v1/admin")
public class ControlOrderController {
	@Autowired
	private IOrderService orderService;
	
	@GetMapping("/order/list")
	public List<OrderEntity> getListOrder(){
		List<OrderEntity> list = orderService.findAll();
		return list;
	}
	
	@GetMapping("/order/list/status/{id}")
	public List<OrderEntity> getListOrderByStatusId(@PathVariable(name = "id") Long statusId){
		return orderService.findAllByOrderStatusOrderStatusId(statusId);
	}
	
	@GetMapping("/order/list/account/{id}")
	public List<OrderEntity> getListOrderByAccountId(@PathVariable(name = "id") Long accountId){
		return orderService.findAllByAccountAccountId(accountId);
	}
	
	@GetMapping("/order/{id}")
	public OrderEntity getOrderByOrderId(Long orderId) {
		return orderService.findByOrderId(orderId);
	}
	
	@PutMapping("/order/{orderid}/status/{statusid}")
	public OrderEntity updateOrderStatus(@PathVariable("orderid") Long orderId, @PathVariable("statusid") Long statusId) {
		return orderService.updateStatus(orderId, statusId);
	}
}
