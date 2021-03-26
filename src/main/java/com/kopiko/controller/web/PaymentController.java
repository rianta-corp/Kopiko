/**
 * 
 */
package com.kopiko.controller.web;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.kopiko.model.Cart;

/**
 * @author rianta9
 * @datecreated 16 thg 3, 2021 11:21:55 Thanh toán
 */

@Controller
public class PaymentController {
	@GetMapping("/checkout/payment")
	public String payment(HttpSession session) {
		HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
		if (cartItems == null) {
			cartItems = new HashMap<>();
		}
		return "redirect:/account/order";
	}
}
