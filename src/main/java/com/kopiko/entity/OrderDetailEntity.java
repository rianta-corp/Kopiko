///**
// * 
// * @author ADMIN
// * @date Mar 11, 2021
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
//@Table(name = "ORDERDETAIL")
//public class OrderDetailEntity {
//
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	@Column(name = "orderDetailId")
//	private Long orderDetailId;
//
//	@Column(name = "orderId")
//	private Long orderId;
//
//	@Column(name = "productId")
//	private Long productId;
//
//	@Column(name = "quantity")
//	private int quantity;
//
//	@Column(name = "salePrice")
//	private Long salePrice;
//
//	public OrderDetailEntity(Long orderId, Long productId, int quantity, Long salePrice) {
//		super();
//		this.orderId = orderId;
//		this.productId = productId;
//		this.quantity = quantity;
//		this.salePrice = salePrice;
//	}
//
//	/**
//	 * @return the orderDetailId
//	 */
//	public Long getOrderDetailId() {
//		return orderDetailId;
//	}
//
//	/**
//	 * @param orderDetailId the orderDetailId to set
//	 */
//	public void setOrderDetailId(Long orderDetailId) {
//		this.orderDetailId = orderDetailId;
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
//	 * @return the productId
//	 */
//	public Long getProductId() {
//		return productId;
//	}
//
//	/**
//	 * @param productId the productId to set
//	 */
//	public void setProductId(Long productId) {
//		this.productId = productId;
//	}
//
//	/**
//	 * @return the quantity
//	 */
//	public int getQuantity() {
//		return quantity;
//	}
//
//	/**
//	 * @param quantity the quantity to set
//	 */
//	public void setQuantity(int quantity) {
//		this.quantity = quantity;
//	}
//
//	/**
//	 * @return the salePrice
//	 */
//	public Long getSalePrice() {
//		return salePrice;
//	}
//
//	/**
//	 * @param salePrice the salePrice to set
//	 */
//	public void setSalePrice(Long salePrice) {
//		this.salePrice = salePrice;
//	}
//
//}
