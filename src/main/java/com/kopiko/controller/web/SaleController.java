/**
 * 
 */
package com.kopiko.controller.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kopiko.converter.ProductConverter;
import com.kopiko.converter.ProductShowListConverter;
import com.kopiko.dto.ProductDTO;
import com.kopiko.dto.ProductShowListDTO;
import com.kopiko.entity.Product;
import com.kopiko.service.impl.ProductService;

/**
 * @author rianta9
 * @datecreated 16 thg 3, 2021 11:20:51
 */

@RestController
@RequestMapping("/api/v1/search")
public class SaleController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ProductShowListConverter converter;
	
	@GetMapping("/sale")
	public List<ProductShowListDTO> getListSale(){
		List<Product> listSale = productService.findByProductSale();
		List<ProductShowListDTO> listResult = new ArrayList<ProductShowListDTO>();
		for (Product product : listSale) {
			listResult.add(converter.toDTO(product));
		}
		return listResult;
	}
	
}
