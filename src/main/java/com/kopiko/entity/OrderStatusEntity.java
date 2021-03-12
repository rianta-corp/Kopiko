///**
// * 
// * @author ADMIN
// * @date Mar 10, 2021
// */
//
//package com.kopiko.entity;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.Table;
//
//@Entity
//@Table(name = "ORDERSTATUS")
//public class OrderStatusEntity {
//
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	@Column(name = "OrderStatusID")
//	private Long orderStatusId;
//
//	@Column(name = "statusName")
//	private String statusName;
//
//	public OrderStatusEntity( String statusName) {
//		super();
//		this.statusName = statusName;
//	}
//
//	public OrderStatusEntity() {
//		super();
//	}
//
//	/**
//	 * @return the orderStatusId
//	 */
//	public Long getOrderStatusId() {
//		return orderStatusId;
//	}
//
//	/**
//	 * @param orderStatusId the orderStatusId to set
//	 */
//	public void setOrderStatusId(Long orderStatusId) {
//		this.orderStatusId = orderStatusId;
//	}
//
//	/**
//	 * @return the statusName
//	 */
//	public String getStatusName() {
//		return statusName;
//	}
//
//	/**
//	 * @param statusName the statusName to set
//	 */
//	public void setStatusName(String statusName) {
//		this.statusName = statusName;
//	}
//
//}
