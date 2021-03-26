/**
 * 
 */
package com.kopiko.controller.admin;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kopiko.entity.Brand;
import com.kopiko.model.ResponseModel;
import com.kopiko.service.impl.BrandService;


@Controller
@RequestMapping("/admin/brand")
public class ControlBrandController {

	@Autowired
	private BrandService brandService;
	
	@GetMapping
	public String initPageBrand(Model model) {
		return "admin/brand-admin";
	}
	
	@GetMapping(value = "/findAll")
	@ResponseBody
	public List<Brand> findAllBrand() {
		return brandService.findAll();
	}
	
	@PostMapping(value = "/add")
	@ResponseBody
	public ResponseModel addNewBrand(@ModelAttribute Brand brandEntity) {
		return brandService.addNewBrand(brandEntity);
	}
	
	@RequestMapping(value = "/update", method = {RequestMethod.PUT, RequestMethod.POST})
	@ResponseBody
	public ResponseModel updateBrand(@ModelAttribute Brand brandEntity) {
		return brandService.updateBrand(brandEntity);
	}
	
	@DeleteMapping(value = "/delete/{id}")
	@ResponseBody
	public ResponseModel deleteBrand(@PathVariable(value = "id") Long id) {
		return brandService.deleteBrandById(id);
	}
	
	@GetMapping(value = "/find/{id}")
	@ResponseBody
	public Brand findByBrandId(@PathVariable(value = "id") Long id) {
		return brandService.findByBrandId(id);
	}
}
