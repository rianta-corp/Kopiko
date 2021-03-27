/**
 * 
 */
package com.kopiko.controller.web;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.kopiko.converter.AccountCustomerConverter;
import com.kopiko.dto.AccountCustomerDTO;
import com.kopiko.entity.Account;
import com.kopiko.model.Cart;
import com.kopiko.service.IAccountService;

/**
 * @author rianta9
 * @datecreated 16 thg 3, 2021 11:21:55 Thanh toán
 */

@Controller
public class PaymentController {
	@Autowired
	private IAccountService accountService;
	
	@Autowired
	private AccountCustomerConverter customerConverter;
	
	
	@GetMapping("/checkout/payment")
	public String payment(HttpSession session) {
		HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
		if (cartItems == null) {
			cartItems = new HashMap<>();
		}
		
		String username = (String)session.getAttribute("username");
		if(username == null) return "redirect:/login";
		else {
			Account account = accountService.findByUsername(username);
			
		}
		return "redirect:/account/order";
	}
}
