/**
 * 
 * @author ADMIN
 * @date Mar 10, 2021
 */

package com.kopiko.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

<<<<<<< HEAD
import lombok.AllArgsConstructor;
=======
>>>>>>> master
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "category")
@Data
<<<<<<< HEAD
@AllArgsConstructor
=======
>>>>>>> master
@NoArgsConstructor
public class CategoryEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "bigint", name = "category_id")
	private Long categoryId;

	@Column(nullable = false)
	private String categoryCode;

	@Column(nullable = false, columnDefinition = "nvarchar(50)")
	private String categoryName;

	@Column(columnDefinition = "bigint")
	private Long parentCategoryId;
<<<<<<< HEAD

}
=======
}
>>>>>>> master
