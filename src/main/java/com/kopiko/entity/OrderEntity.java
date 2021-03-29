/**
 * 
 * @author ADMIN
 * @date Mar 11, 2021
 */

package com.kopiko.entity;
import java.sql.Date;
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

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "[order]")
@Data
@NoArgsConstructor
public class OrderEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "bigint", name = "order_id")
	private Long orderId;
	
	@ManyToOne
	@JoinColumn(name = "account_id", nullable = false)
	private Account account;
	
	@CreationTimestamp
	@Column(nullable = false, columnDefinition = "datetime")
	private Date dateCreated;
	
	@ManyToOne
	@JoinColumn(name = "order_status_id", nullable = false)
	@ColumnDefault("1")
	private OrderStatusEntity orderStatus;
	
	@Column(nullable = false, columnDefinition = "nvarchar(250)")
	private String deliveryInfo;
	
	@ManyToOne
	@JoinColumn(name = "payment_method_id", nullable = false)
	private PaymentMethodEntity paymentMethod;

	@OneToMany(mappedBy = "order")
	private List<OrderDetailEntity> listOrderDetail;
	
}
