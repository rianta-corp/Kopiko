/**
 * 
 * @author ADMIN
 * @date Mar 10, 2021
 */

package com.kopiko.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "payment_method")
public class PaymentMethodEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "bigint", name = "payment_method_id")
	private Long paymentMethodId;

	@Column(nullable = false, columnDefinition = "nvarchar(50)")
	private String paymentMethodName;

	public PaymentMethodEntity(String paymentMethodName) {
		this.paymentMethodName = paymentMethodName;
	}

	public PaymentMethodEntity() {
		super();
	}

	/**
	 * @return the paymentMethodId
	 */
	public Long getPaymentMethodId() {
		return paymentMethodId;
	}

	/**
	 * @param paymentMethodId the paymentMethodId to set
	 */
	public void setPaymentMethodId(Long paymentMethodId) {
		this.paymentMethodId = paymentMethodId;
	}

	/**
	 * @return the paymentMethodName
	 */
	public String getPaymentMethodName() {
		return paymentMethodName;
	}

	/**
	 * @param paymentMethodName the paymentMethodName to set
	 */
	public void setPaymentMethodName(String paymentMethodName) {
		this.paymentMethodName = paymentMethodName;
	}

}
