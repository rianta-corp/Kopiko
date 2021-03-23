/**
 * 
 */
package com.kopiko.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kopiko.entity.Product;
import com.kopiko.service.IProductService;

/**
 * @author rianta9
 * @datecreated 16 thg 3, 2021 11:21:11
 * Xem thông tin sản phẩm
 */

@Controller
public class ProductController {
	@Autowired
	private IProductService productService;
	
	@RequestMapping("/product/{id}")
	public String viewProductDetail(Model model, @PathVariable Long id) {
		Product product = productService.findByProductId(id);
		model.addAttribute("product", product);
		return "web/product";
	}
}
