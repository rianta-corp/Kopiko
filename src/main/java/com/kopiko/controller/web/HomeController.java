package com.kopiko.controller.web;

 import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kopiko.converter.ProductShowListConverter;
import com.kopiko.entity.Product;
import com.kopiko.model.ITop12ProductSelling;
import com.kopiko.service.impl.ProductService;
import com.kopiko.util.DateTimeUtil;

@Controller
public class HomeController {
	
	@Autowired 
	ProductService productService;
	
	@Autowired
	ProductShowListConverter proproductShowListConverter;
	
	@RequestMapping(value = {"/", "home"})
	public String homePage(Model model) {
		Date date = new Date();
		int month = date.getMonth() +1 ;
		int year = date.getYear() + 1900;
		
		 Calendar datesql = Calendar.getInstance();  
		  DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy"); 
         String dateEndString = dateFormat.format(datesql.getTime()); 
         datesql.add(Calendar.MONTH, -1);
         String dateStartString = dateFormat.format(datesql.getTime()); 
         
         java.sql.Date dateEndSql = DateTimeUtil.toDateSQL(dateEndString);
         java.sql.Date dateStrartSql = DateTimeUtil.toDateSQL(dateStartString);
		List<ITop12ProductSelling> data = productService.Selling(month, year);
		if(data != null) System.out.println("Dư lieu 12 sp: " + data);
		List<Product> sellingProduct = new ArrayList<Product>();
		
		for(ITop12ProductSelling result : data) {
			sellingProduct.add(productService.findByProductId(result.getProductId()));	
		}
		
		List<Product> listNewProduct = productService.HotNewMonth(dateStrartSql, dateEndSql);
		List<Product> promotionalProducts = new ArrayList<Product>();
		promotionalProducts = productService.findByProductSale();
		model.addAttribute("promotionalProducts", proproductShowListConverter.toProductShowListDTO(promotionalProducts));
		model.addAttribute("listSelling",proproductShowListConverter.toProductShowListDTO(sellingProduct));
		model.addAttribute("listNewProduct", proproductShowListConverter.toProductShowListDTO(listNewProduct));
		return "web/home";
	}
	
	@RequestMapping(value = {"search"})
	public String searchPage() {
		return "web/search";
	}
	
	@RequestMapping(value = {"search/sale"})
	public String searchSalePage() {
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
