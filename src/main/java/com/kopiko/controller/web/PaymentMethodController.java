/**
 * 
 * @author ADMIN
 * @date Mar 12, 2021
 */

package com.kopiko.controller.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kopiko.entity.PaymentMethodEntity;
import com.kopiko.service.IPaymentMethodService;

@RestController
@RequestMapping(value = "/api/payment")
public class PaymentMethodController {

	@Autowired
	private IPaymentMethodService paymentMethodService;

	@GetMapping()
	public List<PaymentMethodEntity> getAllPaymentMethod() {
		return paymentMethodService.getListPaymentMethod();
	}

	@PostMapping(value = "/add")
	public PaymentMethodEntity addNewPaymentMethod(@RequestBody PaymentMethodEntity paymentMethodEntity) {
		return paymentMethodService.addNewPaymentMethod(paymentMethodEntity);
	}

	@PutMapping(value = "/update")
	public PaymentMethodEntity updatePaymentMethod(@RequestBody PaymentMethodEntity paymentMethodEntity) {
		return paymentMethodService.updatePaymentMethod(paymentMethodEntity);
	}

	@DeleteMapping(value = "/delete/{paymentMethodId}")
	public void deletePaymentMethod(@PathVariable("paymentMethodId") Long paymentMethodId) {
		paymentMethodService.deletePaymentMethod(paymentMethodId);
	}

	@GetMapping(value = "/search/{paymentMethodId}")
	public PaymentMethodEntity findPaymentMethodById(@PathVariable("paymentMethodId") Long paymentMethodId) {
		return paymentMethodService.findPaymentMethodById(paymentMethodId);
	}
}
