package com.kopiko.controller.web;

 import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kopiko.entity.Product;
import com.kopiko.service.ICategoryService;
import com.kopiko.service.impl.BrandService;
import com.kopiko.service.impl.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private ICategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private BrandService brandService;
	
	@RequestMapping(value = {"/", "home"})
	public String homePage() {
		return "web/home";
	}
	
	@RequestMapping(value = {"search"})
	public String searchPage() {
		return "web/search";
	}
	
//	@RequestMapping(value = {"search/sale"})
//	public String searchSalePage() {
//		return "web/search-sale";
//	}
	
	@RequestMapping(value = {"search/sale"}) 
	public String searchSalePage(Model model) {
		model.addAttribute("listcategory", categoryService.findAll());
		model.addAttribute("listBrand", brandService.findAll());
		return "web/search-sale"; }
	
	@RequestMapping(value = "/search/sale", method = RequestMethod.POST)
	public String getSearchPrice(@RequestParam("minPrice") BigDecimal minPrice, @RequestParam("maxPrice") BigDecimal maxPrice, Model model) {
		System.out.println(minPrice +"  " + maxPrice);
		List<Product> list = productService.findAllBySalePrice(minPrice, maxPrice);
		for (Product product : list) {
			System.out.println(product.toString());
		}
		model.addAttribute("list", list);
		model.addAttribute("listcategory", categoryService.findAll());
		model.addAttribute("listBrand", brandService.findAll());
		return "web/search-sale";
	}
	
	
	
//	@RequestMapping(value = {"checkout/cart"})
//	public String cartPage() {
//		return "web/cart";
//	}
//	
//
//	@RequestMapping(value = {"checkout/payment"})
//	public String paymentPage() {
//		return "web/payment";
//	}
//	
//	
//	@RequestMapping(value = {"product"})
//	public String productPage() {
//		return "web/product";
//	}
//	
//	@RequestMapping(value = {"category"})
//	public String categoryPage() {
//		return "web/category";
//	}
//	
//	@RequestMapping(value = {"account/order"})
//	@PreAuthorize("hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')")
//	public String controlOrderPage() {
//		return "web/control-order";
//	}
//	
//	@RequestMapping(value = {"account/order/detail"})
//	@PreAuthorize("hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')")
//	public String controlOrderDetailPage() {
//		return "web/control-order-detail";
//	}
//	
//	@RequestMapping(value = {"account/profile"})
//	@PreAuthorize("hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')")
//	public String controlAccountPage() {
//		return "web/control-account";
//	}
//	
//	
//	
}
