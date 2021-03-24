/**
 * 
 */
package com.kopiko.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kopiko.entity.Account;
import com.kopiko.service.IAccountService;

/**
 * @author rianta9
 * @datecreated 16 thg 3, 2021 11:22:44
 */

@Controller
public class RegisterController {
	@Autowired
	private IAccountService accountService;
	
	
	@RequestMapping("/register")
	public String viewRegister() {
		return "web/register";
	}
	
	@PostMapping("/register")
	public String doRegister(@ModelAttribute Account account) {
		if(account != null) {
			if(accountService.checkIdentity(account.getUsername(), account.getEmail(), account.getPhone())) {
				if(account.getFullName() != null && account.getPassword() != null) {
					accountService.save(account);
					return "redirect:login";
				}
			}
		}
		return "/register?message=error";
	}
}
