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

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "payment_method")
@Data
@NoArgsConstructor
public class PaymentMethodEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "bigint", name = "payment_method_id")
	private Long paymentMethodId;

	@Column(nullable = false, columnDefinition = "nvarchar(50)")
	private String paymentMethodName;

}
