///**
// * 
// * @author ADMIN
// * @date Mar 11, 2021
// */
//
//package com.kopiko.entity;
//import java.sql.Timestamp;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.Table;
//
//@Entity
//@Table(name = "Order")
//public class OrderEntity {
//	
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	@Column(name = "orderId")
//	private Long orderId;
//	
//	@Column(name = "accountId", nullable = false)
//	private Long accountId;
//	
//	@Column(name = "dateCreated", nullable = false)
//	private Timestamp dateCreated;
//	
//	@Column(name = "onderStatusId", nullable = false)
//	private Long orderStatusId;
//	
//	@Column(name = "deliveryInfo", nullable = false)
//	private String deliveryInfo;
//	
//	@Column(name = "paymentMethodId", nullable = false)
//	private int paymentMethodId;
//
//	public OrderEntity(Long accountId, Timestamp dateCreated, Long orderStatusId, String deliveryInfo, int paymentMethodId) {
//		super();
//		this.accountId = accountId;
//		this.dateCreated = dateCreated;
//		this.orderStatusId = orderStatusId;
//		this.deliveryInfo = deliveryInfo;
//		this.paymentMethodId = paymentMethodId;
//	}
//
//	public OrderEntity() {
//		super();
//	}
//
//	/**
//	 * @return the orderId
//	 */
//	public Long getOrderId() {
//		return orderId;
//	}
//
//	/**
//	 * @param orderId the orderId to set
//	 */
//	public void setOrderId(Long orderId) {
//		this.orderId = orderId;
//	}
//
//	/**
//	 * @return the accountId
//	 */
//	public Long getAccountId() {	
//		return accountId;
//	}
//
//	/**
//	 * @param accountId the accountId to set
//	 */
//	public void setAccountId(Long accountId) {
//		this.accountId = accountId;
//	}
//
//	/**
//	 * @return the dateCreated
//	 */
//	public Timestamp getDateCreated() {
//		return dateCreated;
//	}
//
//	/**
//	 * @param dateCreated the dateCreated to set
//	 */
//	public void setDateCreated(Timestamp dateCreated) {
//		this.dateCreated = dateCreated;
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
//	 * @return the deliveryInfo
//	 */
//	public String getDeliveryInfo() {
//		return deliveryInfo;
//	}
//
//	/**
//	 * @param deliveryInfo the deliveryInfo to set
//	 */
//	public void setDeliveryInfo(String deliveryInfo) {
//		this.deliveryInfo = deliveryInfo;
//	}
//
//	/**
//	 * @return the paymentMethodId
//	 */
//	public int getPaymentMethodId() {
//		return paymentMethodId;
//	}
//
//	/**
//	 * @param paymentMethodId the paymentMethodId to set
//	 */
//	public void setPaymentMethodId(int paymentMethodId) {
//		this.paymentMethodId = paymentMethodId;
//	}
//	
//}
