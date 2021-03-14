/**
 * 
 * @author ADMIN
 * @date Mar 11, 2021
 */

package com.kopiko.entity;
import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name = "[order]")
public class OrderEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "bigint", name = "order_id")
	private Long orderId;
	
	@ManyToOne
	@JoinColumn(name = "account_id", nullable = false)
	private Account account;
	
	@CreationTimestamp
	@Column(nullable = false, columnDefinition = "timestamp")
	private Timestamp dateCreated;
	
	@ManyToOne
	@JoinColumn(name = "order_status_id", nullable = false)
	private OrderStatusEntity orderStatus;
	
	@Column(nullable = false, columnDefinition = "nvarchar(250)")
	private String deliveryInfo;
	
	@ManyToOne
	@JoinColumn(name = "payment_method_id", nullable = false)
	private PaymentMethodEntity paymentMethod;

	@OneToMany(mappedBy = "order")
	private List<OrderDetailEntity> listOrderDetail;
	
	public OrderEntity(Account account, Timestamp dateCreated, OrderStatusEntity orderStatus, String deliveryInfo, PaymentMethodEntity paymentMethod) {
		super();
		this.account = account;
		this.dateCreated = dateCreated;
		this.orderStatus = orderStatus;
		this.deliveryInfo = deliveryInfo;
		this.paymentMethod = paymentMethod;
	}

	public OrderEntity() {
		super();
	}

	/**
	 * @return the orderId
	 */
	public Long getOrderId() {
		return orderId;
	}

	/**
	 * @param orderId the orderId to set
	 */
	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	/**
	 * @return the accountId
	 */
	public Account getAccount() {	
		return account;
	}

	/**
	 * @param accountId the accountId to set
	 */
	public void setAccount(Account account) {
		this.account = account;
	}

	/**
	 * @return the dateCreated
	 */
	public Timestamp getDateCreated() {
		return dateCreated;
	}

	/**
	 * @param dateCreated the dateCreated to set
	 */
	public void setDateCreated(Timestamp dateCreated) {
		this.dateCreated = dateCreated;
	}

	/**
	 * @return the orderStatusId
	 */
	public OrderStatusEntity getOrderStatus() {
		return orderStatus;
	}

	/**
	 * @param orderStatusId the orderStatusId to set
	 */
	public void setOrderStatus(OrderStatusEntity orderStatus) {
		this.orderStatus = orderStatus;
	}

	/**
	 * @return the deliveryInfo
	 */
	public String getDeliveryInfo() {
		return deliveryInfo;
	}

	/**
	 * @param deliveryInfo the deliveryInfo to set
	 */
	public void setDeliveryInfo(String deliveryInfo) {
		this.deliveryInfo = deliveryInfo;
	}

	/**
	 * @return the paymentMethodId
	 */
	public PaymentMethodEntity getPaymentMethod() {
		return paymentMethod;
	}

	/**
	 * @param paymentMethodId the paymentMethodId to set
	 */
	public void setPaymentMethodId(PaymentMethodEntity paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public List<OrderDetailEntity> getListOrderDetail() {
		return listOrderDetail;
	}

	public void setListOrderDetail(List<OrderDetailEntity> listOrderDetail) {
		this.listOrderDetail = listOrderDetail;
	}

	public void setPaymentMethod(PaymentMethodEntity paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	
	
	
}
