/**
 * 
 * @author ADMIN
 * @date Mar 17, 2021
 */

package com.kopiko.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kopiko.entity.CategoryEntity;
import com.kopiko.service.ICategoryService;

@Controller
@RequestMapping(value = "/admin/category")
public class CategoryControllerAdmin {

	@Autowired
	private ICategoryService categoryService;

	@GetMapping
	public String initPage() {
		return "payment-method";
	}
	
	@PostMapping(value = "/add")
	@ResponseBody
	public CategoryEntity addCategory(@RequestBody CategoryEntity categoryEntity) {
		return categoryService.addCategory(categoryEntity);
	}

	@PutMapping(value = "/update")
	@ResponseBody
	public CategoryEntity updateCategory(@RequestBody CategoryEntity categoryEntity) {
		return categoryService.updateCategory(categoryEntity);
	}

	@DeleteMapping(value = "/delete/{id}")
	@ResponseBody
	public String deleteCategoryById(@PathVariable("id") Long id) {
		categoryService.deleteCategory(id);
		return "Delete Success";
	}
	
	@GetMapping(value = "/search")
	@ResponseBody
	public List<CategoryEntity> searchCategory(@RequestParam(value = "keyword") String categoryName) {
		return categoryService.searchCategoryByName(categoryName);
	}
	
	@GetMapping(value = "/view")
	@ResponseBody
	public List<CategoryEntity> getAllCategory() {
		return categoryService.getAllCategory();
	}

}
