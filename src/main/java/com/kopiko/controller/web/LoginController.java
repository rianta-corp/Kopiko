/**
 * 
 */
package com.kopiko.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @author rianta9
 * @datecreated 16 thg 3, 2021 11:22:17
 */

@Controller
public class LoginController {
	
	@RequestMapping("/login")
	public String viewLogin(@RequestParam(required = false) String message, Model model) {
		if(message != null && !message.isEmpty()) {
			if(message.equals("logout")) {
				model.addAttribute("message", "Đăng xuất!");
			}
			else if(message.equals("error")) {
				model.addAttribute("message", "Đăng nhập thất bại!");
			}
		}
		return "web/login";
	}
}	
