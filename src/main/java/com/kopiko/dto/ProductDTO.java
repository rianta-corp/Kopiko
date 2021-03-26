/**
 * 
 */
package com.kopiko.dto;

import java.math.BigDecimal;
import java.sql.Date;

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
	private BigDecimal price;
	private BigDecimal salePrice;
	private String description;
	private Integer status;
}
