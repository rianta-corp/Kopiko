/**
 * 
 * @author ADMIN
 * @date Mar 10, 2021
 */

package com.kopiko.service.impl;

import java.awt.print.Pageable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.kopiko.common.constant.Constants;
import com.kopiko.entity.PaymentMethodEntity;
import com.kopiko.repository.IPaymentMethodRepository;
import com.kopiko.service.IPaymentMethodService;

@Service
public class PaymentMethodServiceImpl implements IPaymentMethodService {

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

	@Override
	public List<PaymentMethodEntity> findAllPaymentMethodWithPage(int pageNumber) {
		Map<String, Object> responseMap = new HashMap<>();
		List<PaymentMethodEntity> listPayment = new ArrayList<PaymentMethodEntity>();
		try {
			Sort sortList = Sort.by(Sort.Direction.DESC, "paymetMethodId");
			Pageable pageable = (Pageable) PageRequest.of(pageNumber - 1, Constants.PAGE_SIZE, sortList);
			Page<PaymentMethodEntity> paymentMethodEntitiesPage = (Page<PaymentMethodEntity>) paymentMethodRepository.findAll((Sort) pageable);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return listPayment;
	}

	@Override
	public List<PaymentMethodEntity> findByPaymentMethodNameContaining(String paymentMethodName) {
		return paymentMethodRepository.findByPaymentMethodNameContaining(paymentMethodName);
	}

}
