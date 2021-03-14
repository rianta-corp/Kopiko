package com.kopiko.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	@RequestMapping("/admin/home")
	public String index() {
		return "admin/home";
	}
}
