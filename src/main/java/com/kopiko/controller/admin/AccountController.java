package com.kopiko.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.RestController;
=======
import org.springframework.web.bind.annotation.ResponseBody;
>>>>>>> 03ac1ebc9710ca6c101d00c2da850d6e88735e2c
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kopiko.entity.Account;
import com.kopiko.entity.Brand;
import com.kopiko.service.IAccountService;
import com.kopiko.service.impl.AccountService;
<<<<<<< HEAD

=======
>>>>>>> 03ac1ebc9710ca6c101d00c2da850d6e88735e2c

@RestController
@RequestMapping("/api/v1/admin")
public class AccountController {
<<<<<<< HEAD
@Autowired
private IAccountService accountService;

@GetMapping("/account")
public List<Account> getListAccount(){
	List<Account> list = accountService.findAll();
	return list;
}

@GetMapping("/account/{id}")
public Account getAccount(@PathVariable(name = "id") Long id) {
	return accountService.findByAccountId(id);
}

//@GetMapping("/brand")
//public List<Brand> getListBrand(){
//	List<Brand> list = brandService.findAll();
//	return list;
//}
//
//@GetMapping("/brand/{id}")
//public Brand getBrand(@PathVariable(name = "id") Long id) {
//	return brandService.findByBrandId(id);
//}
@PostMapping("/account")
public Account  insertAccount(@RequestBody Account account) {
	return accountService.insert(account);
}

@PutMapping("/account/{id}")
public Account updateAccount(@PathVariable(name = "id") Long id, @RequestBody Account account) {
	return accountService.update(account);
}

@DeleteMapping("/account/{id}")
public ResponseEntity deleteAccount(@PathVariable(name = "id") Long id) {
	accountService.deleteById(id);
	return ResponseEntity.ok().build();
}

}
=======
	@Autowired
	private AccountService accountService;

	@GetMapping("/api/v1")
	@ResponseBody
	public String index(Model model) {
		model.addAttribute("account", accountService.findAll());
		return "list";
	}

	@GetMapping("/account/create")
	public String create(Model model) {
		model.addAttribute("account", new Account());
		return "form";
	}

	@GetMapping("/account/{accountId}/insert")
	public String edit(@PathVariable Long accountId, Model model) {
		model.addAttribute("account", accountService.findOne(accountId));
		return "form";
	}

	@PostMapping("/account/save")
	public String save(@Validated Account account, BindingResult result, RedirectAttributes redirect) {
		if (result.hasErrors()) {
			return "form";
		}
		accountService.save(account);
		redirect.addFlashAttribute("success", "Saved account successfully!");
		return "redirect:/account";
	}

	@GetMapping("/account/{accountId}/delete")
	public String delete(@PathVariable Long id, RedirectAttributes redirect) {
		Account account = accountService.findOne(id);
		accountService.delete(account);
		redirect.addFlashAttribute("success", "Deleted account successfully!");
		return "redirect:/account";
	}

	@GetMapping("/account/search")
	public String search(@RequestParam("s") String s, Model model) {
		if (s.equals("")) {
			return "redirect:/account";
		}

		model.addAttribute("account", accountService.search(s));
		return "list";
	}
}
>>>>>>> 03ac1ebc9710ca6c101d00c2da850d6e88735e2c
