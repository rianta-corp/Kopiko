/**
 * 
 */
package com.kopiko.controller.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kopiko.converter.ProductConverter;
import com.kopiko.entity.Status;
import com.kopiko.service.IBrandService;
import com.kopiko.service.ICategoryService;
import com.kopiko.service.IProductService;
import com.kopiko.service.IStatusService;

/**
 * @author rianta9
 * @datecreated 16 thg 3, 2021 11:09:31
 */

@Controller
@RequestMapping("/admin")
public class ControlProductController {
	@Autowired
	private IProductService productService;
	
	@Autowired
	private IBrandService brandService;
	
	@Autowired
	private ICategoryService categoryService;

	@Autowired
	private IStatusService statusService;
	
	@Autowired
	private ProductConverter productConverter;
	
	
	
	
	
	@GetMapping("/product/list")
	public String getListProduct(Model model) {
		return "admin/list-product";
	}

	@GetMapping("/product/list/category/{id}")
	public String getListProductByCategoryId(Model model, @PathVariable(name = "id") Long categoryId) {
		model.addAttribute("categoryId", categoryId);
		return "admin/list";
	}

	@GetMapping("/product/list/brand/{id}")
	public String getListProductByBrandId(Model model, @PathVariable(name = "id") Long brandId) {
		model.addAttribute("brandId", brandId);
		return "admin/list";
	}

	@GetMapping("/product/new")
	public String insert(Model model) {
		model.addAttribute("listBrand", brandService.findAll());
		model.addAttribute("listCategory", categoryService.findAll());
		model.addAttribute("listStatus", statusService.findAll());
		return "admin/insert-product";
	}

	@GetMapping("/product/{id}/edit")
	public String update(Model model, @PathVariable(name = "id") Long productId) {
		model.addAttribute("productId", productId);
		model.addAttribute("productDTO", productConverter.toDTO(productService.findByProductId(productId)));
		model.addAttribute("listBrand", brandService.findAll());
		model.addAttribute("listCategory", categoryService.findAll());
		model.addAttribute("listStatus", statusService.findAll());
		return "admin/update-product";
	}
	
	@GetMapping("/product/{id}/view")
	public String viewProduct(Model model, @PathVariable(name = "id") Long productId) {
		model.addAttribute("productDTO", productService.findByProductId(productId));
		return "admin/view-product";
	}

	@DeleteMapping("/product/{id}/delete")
	public String delete(@PathVariable(name = "id") Long productId) {
		boolean result = productService.delete(productId);
		if (result)
			return "admin/product/list";
		return "admin/product/list";
	}
}
