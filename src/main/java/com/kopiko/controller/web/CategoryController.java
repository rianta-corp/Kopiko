/**
 * 
 */
package com.kopiko.controller.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kopiko.entity.CategoryEntity;
import com.kopiko.service.ICategoryService;

/**
 * @author rianta9
 * @datecreated 16 thg 3, 2021 11:20:21
 * Sản phẩm theo category
 */

@Controller
@RequestMapping("/category")
public class CategoryController {
	
	@Autowired
	private ICategoryService categoryService;

	@GetMapping
	public String initPageCategory() {
		return "web/category";
	}
	
	@GetMapping(value = "/findAll")
	@ResponseBody
	public List<CategoryEntity> findAllCategory() {
		return categoryService.getAllCategory();
	}
}
