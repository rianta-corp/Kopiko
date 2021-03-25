package com.kopiko.entity;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Table(name = "product")
@Data
@NoArgsConstructor
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "bigint", name = "product_id")
	private Long productId;
	
	@Column(nullable = false, columnDefinition = "nvarchar(100)")
	private String productName;
	
	@ManyToOne
	@JoinColumn(name = "category_id", referencedColumnName = "category_id")
	private CategoryEntity category;
	
	@ManyToOne
	@JoinColumn(name = "brand_id")
	private BrandEntity brand;
	
	@Column(nullable = false, columnDefinition = "datetime")
	@CreationTimestamp
	private Date dateCreated;
	
	@Column(columnDefinition = "ntext")
	private String description;
	
	@Column(nullable = false)
	@ColumnDefault("1")
	private Integer status;
	
	@OneToMany(mappedBy = "product")
	private List<ProductImage> listProductImage;
	
	@OneToMany(mappedBy = "product")
	private List<Comment> listComment;
	
	@OneToMany(mappedBy = "product")
	private List<ProductDetail> listProductDetail;

}
