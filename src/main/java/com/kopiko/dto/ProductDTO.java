
package com.kopiko.dto;

import java.sql.Date;
import java.util.List;

import com.kopiko.entity.Brand;
import com.kopiko.entity.CategoryEntity;
import com.kopiko.entity.Comment;
import com.kopiko.entity.ProductDetail;
import com.kopiko.entity.ProductImage;

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

	private CategoryEntity category;

	private Brand brand;

	private Date dateCreated;

	private String description;

	private Integer status;
<<<<<<< HEAD
	
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
=======
}
>>>>>>> 03ac1ebc9710ca6c101d00c2da850d6e88735e2c
