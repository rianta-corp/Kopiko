/**
 * 
 * @author ADMIN
 * @date Mar 12, 2021
 */

package com.kopiko.controller.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kopiko.entity.PaymentMethodEntity;
import com.kopiko.model.ResponseModel;
import com.kopiko.service.IPaymentMethodService;

@Controller
@RequestMapping(value = "/payment")
public class PaymentMethodController {

	@Autowired
	private IPaymentMethodService paymentMethodService;
	
	
	
	@GetMapping()
	public String initIndexPage(Model model) {
		return "payment-method";
	}
	
	@GetMapping("/api/findAll")
	@ResponseBody
	public List<PaymentMethodEntity> getAllPaymentMethod() {
		return paymentMethodService.getListPaymentMethod();
	}

	@PostMapping(value = "/api/add")
	@ResponseBody
	public PaymentMethodEntity addNewPaymentMethod(@ModelAttribute PaymentMethodEntity paymentMethodEntity) {
		return paymentMethodService.addNewPaymentMethod(paymentMethodEntity);
	}

	@PutMapping(value = "/api/update")
	@ResponseBody
	public PaymentMethodEntity updatePaymentMethod(@ModelAttribute PaymentMethodEntity paymentMethodEntity) {
		return paymentMethodService.updatePaymentMethod(paymentMethodEntity);
	}

	@DeleteMapping(value = "/api/delete/{paymentMethodId}")
	@ResponseBody
	public void deletePaymentMethod(@PathVariable("paymentMethodId") Long paymentMethodId) {
		paymentMethodService.deletePaymentMethod(paymentMethodId);
	}

	@GetMapping(value = "/api/find/{id}")
	@ResponseBody
	public PaymentMethodEntity findPaymentMethodById(@PathVariable("id") Long paymentMethodId) {
		return paymentMethodService.findPaymentMethodById(paymentMethodId);
	}
	
	@GetMapping(value = "/api/search/{paymentMethodName}")
	@ResponseBody
	public List<PaymentMethodEntity> searchPaymetMethodByName(@PathVariable("paymentMethodName") String paymentMethodName) {
		return paymentMethodService.findByPaymentMethodNameContaining(paymentMethodName);
	}
	
	/**
	 * Test get info for home page
	 */
	@GetMapping(value = "/v1/api/home")
	@ResponseBody
	public ResponseModel getInfoHomePage() {
		return paymentMethodService.getInfoHomePage();
	}
}
