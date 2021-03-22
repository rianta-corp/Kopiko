
package com.kopiko.dto;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import com.kopiko.entity.Product;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author rianta9
 * @datecreated 17 thg 3, 2021 15:54:58
 */

@Data
@NoArgsConstructor
public class ProductDTO {
	private Long productId;
	private String productName;
	private Long categoryId;
	private Long brandId;
	private Date dateCreated;
	private String description;
	private Integer status;
	
	public static ProductDTO convert(Product product) {
		ProductDTO dto = new ProductDTO();
		dto.setProductId(product.getProductId());
		dto.setProductName(product.getProductName());
		dto.setCategoryId(product.getCategory().getCategoryId());
		dto.setBrandId(product.getBrand().getBrandId());
		dto.setDateCreated(product.getDateCreated());
		dto.setDescription(product.getDescription());
		dto.setStatus(product.getStatus());
		return dto;
	}
	
	public static List<ProductDTO> convertList(List<Product> list){
		List<ProductDTO> result = new ArrayList<>();
		for (Product product : list) {
			result.add(convert(product));
		}
		
		return result;
	}
}