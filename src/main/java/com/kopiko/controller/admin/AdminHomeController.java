package com.kopiko.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminHomeController {
	@RequestMapping("/admin/home")
	public String index() {
		return "admin/home";
	}
	
	@RequestMapping("/admin/login")
	public String loginPage() {
		return "admin/login";
	}
}
