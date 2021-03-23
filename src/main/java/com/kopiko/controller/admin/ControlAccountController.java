/**
 * 
 */
package com.kopiko.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kopiko.converter.AccountAuthConverter;
import com.kopiko.service.IAccountService;
import com.kopiko.service.ICategoryService;
import com.kopiko.service.IOrderService;
import com.kopiko.service.ICommentService;
import com.kopiko.service.IProductService;
import com.kopiko.service.IStatusService;


//@Controller
//@RequestMapping("/admin/account")
//public class ControlAccountController {
//}



@Controller
@RequestMapping("/admin")
public class ControlAccountController {
	@Autowired
	private IAccountService accountService;
	
	@Autowired
	private ICommentService commentService;
	
	@Autowired
	private IOrderService orderService;

	@Autowired
	private IStatusService statusService;
	
	@Autowired
	private AccountAuthConverter accountConverter;
	
	
	
	
	
	@GetMapping("/account/list")
	public String getListAccount(Model model) {
		return "admin/list-account";
	}

	@GetMapping("/account/list/order/{id}")
	public String getListAccountByOrderId(Model model, @PathVariable(name = "id") Long orderId) {
		model.addAttribute("orderId", orderId);
		return "admin/list";
	}

	@GetMapping("/account/list/comment/{id}")
	public String getListAccountByCommentId(Model model, @PathVariable(name = "id") Long commentId) {
		model.addAttribute("commentId", commentId);
		return "admin/list";
	}

	@GetMapping("/account/new")
	public String insert(Model model) {
		model.addAttribute("listComment", commentService.findAll());
		model.addAttribute("listOrder", orderService.findAll());
		model.addAttribute("listStatus", statusService.findAll());
		return "admin/insert-account";
	}

	@GetMapping("/account/{id}/edit")
	public String update(Model model, @PathVariable(name = "id") Long accountId) {
		model.addAttribute("accountId", accountId);
		model.addAttribute("accountDTO", accountConverter.toDTO(accountService.findByAccountId(accountId)));
		model.addAttribute("listComment", commentService.findAll());
		model.addAttribute("listOrder", orderService.findAll());
		model.addAttribute("listStatus", statusService.findAll());
		return "admin/update-account";
	}

	@GetMapping("/account/{id}/view")
	public String viewAccount(Model model, @PathVariable(name = "id") Long accountId) {
		model.addAttribute("accountDTO", accountService.findByAccountId(accountId));
		return "admin/view-account";
	}

	@DeleteMapping("/account/{id}/delete")
	public String delete(@PathVariable(name = "id") Long accountId) {
		boolean result = accountService.deleteById(accountId);
		if (result)
			return "admin/account/list";
		return "admin/account/list";
	}
}
