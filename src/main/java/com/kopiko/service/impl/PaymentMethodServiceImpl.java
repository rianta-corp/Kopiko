/**
 * 
 * @author ADMIN
 * @date Mar 10, 2021
 */

package com.kopiko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.entity.PaymentMethodEntity;
import com.kopiko.repository.IPaymentMethodRepository;
import com.kopiko.service.IPaymentMethodService;

@Service
public class PaymentMethodServiceImpl implements IPaymentMethodService{

	@Autowired
	private IPaymentMethodRepository paymentMethodRepository;
	
	@Override
	public PaymentMethodEntity addNewPaymentMethod(PaymentMethodEntity paymentMethodEntity) {
		return paymentMethodRepository.saveAndFlush(paymentMethodEntity);
	}

	@Override
	public PaymentMethodEntity updatePaymentMethod(PaymentMethodEntity paymentMethodEntity) {
		return paymentMethodRepository.saveAndFlush(paymentMethodEntity);
	}

	@Override
	public List<PaymentMethodEntity> getListPaymentMethod() {
		return paymentMethodRepository.findAll();
	}

	@Override
	public void deletePaymentMethod(Long paymentMethodId) {
		paymentMethodRepository.deleteById(paymentMethodId);
	}

	@Override
	public PaymentMethodEntity findPaymentMethodById(Long paymentMethodId) {
		return paymentMethodRepository.findByPaymentMethodId(paymentMethodId);
	}
	
	
	
}
