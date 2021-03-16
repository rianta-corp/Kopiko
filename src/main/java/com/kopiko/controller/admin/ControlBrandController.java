/**
 * 
 */
package com.kopiko.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kopiko.entity.Brand;
import com.kopiko.service.IBrandService;

/**
 * @author rianta9
 * @datecreated 15 thg 3, 2021 09:22:18
 */

@Controller
@RequestMapping("/admin/brand")
public class ControlBrandController {
	@Autowired
	private IBrandService brandService;
	
	@RequestMapping(value = "/admin/brand/view")
	public String viewBrandList(Model model) {
		List<Brand> list = brandService.findAll();
		model.addAttribute("list-brand", list);
		return "admin/brand";
	}
	
	@RequestMapping(value = "/admin/brand/insert", method = RequestMethod.GET)
	public String viewInsertBrand(Model model) {
		model.addAttribute("brand", new Brand());
		return "admin/insert-brand";
	}
	
	@RequestMapping(value = "/admin/brand/insert", method = RequestMethod.POST)
	public String doInsertBrand(Model model, @ModelAttribute Brand newBrand) {
		brandService.insert(newBrand);
		return "redirect:admin/insert-brand";
	}
	
	@RequestMapping(value = "/admin/brand/update", method = RequestMethod.GET)
	public String viewUpdateBrand(Model model) {
		model.addAttribute("brand", new Brand());
		return "admin/update-brand";
	}
	
	@RequestMapping(value = "/admin/brand/update", method = RequestMethod.PUT)
	public String doUpdateBrand(Model model, @ModelAttribute Brand newBrand) {
		brandService.insert(newBrand);
		return "redirect:admin/update-brand";
	}
	
	@RequestMapping(value = "admin/brand/delete/{id}", method = RequestMethod.DELETE)
	public String doDeleteBrand(Model model, @PathVariable Long id) {
		return "redirect:admin/brand/view";
	}
}
