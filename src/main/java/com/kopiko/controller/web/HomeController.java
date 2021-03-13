package com.kopiko.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kopiko.entity.ProductImage;

@Controller
public class HomeController {
	@RequestMapping(value = {"/", "home"})
	public String home() {
		return "home";
	}
}
