/**
 * 
 */
package com.kopiko.converter;

import java.util.List;

import org.springframework.stereotype.Component;

import com.kopiko.dto.ProductShowListDTO;
import com.kopiko.entity.Product;
import com.kopiko.entity.ProductDetail;
import com.kopiko.entity.ProductImage;

/**
 * @author rianta9
 * @datecreated 20 thg 3, 2021 21:59:38
 */

@Component
public class ProductShowListConverter {
	public Product toEntity(ProductShowListDTO productShowListDTO) {
		return null;
	}
	
	public ProductShowListDTO toDTO(Product product) {
		ProductShowListDTO result = new ProductShowListDTO();
		result.setProductId(product.getProductId());
		result.setProductName(product.getProductName());
		List<ProductImage> listImage = product.getListProductImage();
		
		if (listImage != null && !listImage.isEmpty()) {
			ProductImage productImage = listImage.get(0);
			result.setImageUrl(productImage.getImageUrl());
		}
		
		List<ProductDetail> listProductDetail = product.getListProductDetail();
		if(listProductDetail != null && !listProductDetail.isEmpty()) {
			ProductDetail productDetail = listProductDetail.get(0);
			result.setPrice(productDetail.getPrice());
			result.setSalePrice(productDetail.getSalePrice());
		}
		
		return result;
	}
}
