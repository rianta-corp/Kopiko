/**
 * 
 */
package com.kopiko.dto;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author rianta9
 * @datecreated 23 thg 3, 2021 13:40:41
 * Sử dụng để truy xuất thông tin order
 */

@Data
@NoArgsConstructor
public class OrderDTO {
	private Long orderId;
	private Date dateCreated;
	private String deliveryInfo;
	private Long accountId;
	private String fullName;
	private Long orderStatusId;
	private String statusName;
	private Long paymentMethodId;
	private String paymentMethodName;
}
