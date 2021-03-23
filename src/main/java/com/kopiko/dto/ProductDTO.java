/**
 * 
 */
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
	private Long categoryId;
	private Long brandId;
	private Date dateCreated;
	private String description;
	private Integer status;
}
