package com.kopiko.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping(value = {"/", "home"})
	public String homePage() {
		return "web/home";
	}
	
	@RequestMapping(value = {"search"})
	public String searchPage() {
		return "web/search";
	}
	
	@RequestMapping(value = {"checkout/cart"})
	public String cartPage() {
		return "web/cart";
	}
	

	@RequestMapping(value = {"checkout/payment"})
	public String paymentPage() {
		return "web/payment";
	}
	
	
	@RequestMapping(value = {"product"})
	public String productPage() {
		return "web/product";
	}
	
	@RequestMapping(value = {"category"})
	public String categoryPage() {
		return "web/category";
	}
	
	@RequestMapping(value = {"account/order"})
	public String controlOrderPage() {
		return "web/control-order";
	}
	
	@RequestMapping(value = {"account/order/detail"})
	public String controlOrderDetailPage() {
		return "web/control-order-detail";
	}
	
	@RequestMapping(value = {"account/profile"})
	public String controlAccountPage() {
		return "web/control-account";
	}
	
	@RequestMapping(value = {"login"})
	public String loginPage() {
		return "web/login";
	}
	
	@RequestMapping(value = {"register"})
	public String registerPage() {
		return "web/register";
	}
}
