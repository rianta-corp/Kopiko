/**
 * 
 */
package com.kopiko.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kopiko.dto.ProductDTO;
import com.kopiko.service.IProductService;

/**
 * @author rianta9
 * @datecreated 16 thg 3, 2021 11:09:31
 */

@RestController
@RequestMapping("/api/v1/admin")
public class ControlProductController {
	@Autowired
	private IProductService productService;
	
//	@GetMapping("/product/list")
//	public List<ProductDTO> getListProduct(){
//		return ProductDTO.convertList(productService.findAll());
//	}
//	
//	@GetMapping("/product/list/category/{id}")
//	public List<ProductDTO> getListProductByCategoryId(@PathVariable(name = "id") Long categoryId){
//		return ProductDTO.convertList(productService.findAllByCategoryId(categoryId));
//	}
	
	
}
