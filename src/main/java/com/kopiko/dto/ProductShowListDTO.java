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
 * @datecreated 20 thg 3, 2021 21:55:15
 */

@Data
@NoArgsConstructor
public class ProductShowListDTO {
	private Long productId;
	private String productName;
	private BigDecimal price; // có nhiều productdetail, => lựa chọn cái đầu tiên để show
	private BigDecimal salePrice;
	private String imageUrl;
}
