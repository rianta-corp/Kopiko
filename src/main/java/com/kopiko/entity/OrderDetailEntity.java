/**
 * 
 * @author ADMIN
 * @date Mar 11, 2021
 */

package com.kopiko.entity;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "order_detail")
public class OrderDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "bigint", name = "order_detail_id")
	private Long orderDetailId;

	@ManyToOne
	@JoinColumn(name = "order_id", nullable = false)
	private OrderEntity order;

	@ManyToOne
	@JoinColumn(name = "product_id", nullable = false)
	private Product product;

	@Column(nullable = false)
	private Integer quantity;

	@Column(nullable = false, columnDefinition = "money")
	private BigDecimal salePrice;

	public OrderDetailEntity(OrderEntity order, Product product, Integer quantity, BigDecimal salePrice) {
		super();
		this.order = order;
		this.product = product;
		this.quantity = quantity;
		this.salePrice = salePrice;
	}

	
	
	public OrderDetailEntity() {
		super();
	}

	

	public OrderDetailEntity(Long orderDetailId, OrderEntity order, Product product, int quantity, BigDecimal salePrice) {
		super();
		this.orderDetailId = orderDetailId;
		this.order = order;
		this.product = product;
		this.quantity = quantity;
		this.salePrice = salePrice;
	}



	/**
	 * @return the orderDetailId
	 */
	public Long getOrderDetailId() {
		return orderDetailId;
	}

	/**
	 * @param orderDetailId the orderDetailId to set
	 */
	public void setOrderDetailId(Long orderDetailId) {
		this.orderDetailId = orderDetailId;
	}

	/**
	 * @return the orderId
	 */
	public OrderEntity getOrder() {
		return order;
	}

	/**
	 * @param orderId the orderId to set
	 */
	public void setOrder(OrderEntity order) {
		this.order = order;
	}

	/**
	 * @return the productId
	 */
	public Product getProduct() {
		return product;
	}

	/**
	 * @param productId the productId to set
	 */
	public void setProduct(Product product) {
		this.product = product;
	}

	/**
	 * @return the quantity
	 */
	public int getQuantity() {
		return quantity;
	}

	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	/**
	 * @return the salePrice
	 */
	public BigDecimal getSalePrice() {
		return salePrice;
	}

	/**
	 * @param salePrice the salePrice to set
	 */
	public void setSalePrice(BigDecimal salePrice) {
		this.salePrice = salePrice;
	}

}
