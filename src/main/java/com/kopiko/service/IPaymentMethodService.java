/**
 * 
 * @author ADMIN
 * @date Mar 10, 2021
 */

package com.kopiko.service;

import java.util.List;

import com.kopiko.entity.PaymentMethodEntity;

public interface IPaymentMethodService {

	 /**
	  * Get list payment method
	  * 
	  * @return ArrayList<PaymentMethodEntity>
	  */
	 List<PaymentMethodEntity> getListPaymentMethod();
	 
	/**
	 * Add new payment method
	 * 
	 * @param paymentMethodEntity
	 * @return PaymentMethodEntity
	 */
	 PaymentMethodEntity addNewPaymentMethod(PaymentMethodEntity paymentMethodEntity);
	
	 /**
	  * Update payment method
	  * 
	  * @param paymentMethodEntity
	  * @return PaymentMethodEntity
	  */
	 PaymentMethodEntity updatePaymentMethod(PaymentMethodEntity paymentMethodEntity);
	 
	 /**
	  * Delete payment method
	  * 
	  * @param paymentMethodId
	  */
	 void deletePaymentMethod(Long paymentMethodId);
	 
	 /**
	  * Find payment method by payment method Id
	  * @param paymentMethodId
	  * @return
	  */
	 PaymentMethodEntity findPaymentMethodById(Long paymentMethodId);

	 
	 
}
