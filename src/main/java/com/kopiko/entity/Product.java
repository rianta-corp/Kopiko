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
	@JoinColumn(name = "category_id", referencedColumnName = "category_id", nullable = false)
	private CategoryEntity categoryId;
	
	@ManyToOne
	@JoinColumn(name = "brand_id")
	private Brand brand;
	
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

<<<<<<< HEAD
	
	
	public Product(Long productId, String productName, CategoryEntity category, Brand brand, Timestamp dateCreated,
			String description, Integer status) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.categoryId = category;
		this.brand = brand;
		this.dateCreated = dateCreated;
		this.description = description;
		this.status = status;
	}

	public Product(String productName, CategoryEntity category, Brand brand, Timestamp dateCreated, String description,
			Integer status) {
		super();
		this.productName = productName;
		this.categoryId = category;
		this.brand = brand;
		this.dateCreated = dateCreated;
		this.description = description;
		this.status = status;
	}

	public Product() {
		super();
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public CategoryEntity getCategory() {
		return categoryId;
	}

	public void setCategory(CategoryEntity category) {
		this.categoryId = category;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public Timestamp getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Timestamp dateCreated) {
		this.dateCreated = dateCreated;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public List<ProductImage> getListProductImage() {
		return listProductImage;
	}

	public void setListProductImage(List<ProductImage> listProductImage) {
		this.listProductImage = listProductImage;
	}

	public List<Comment> getListComment() {
		return listComment;
	}

	public void setListComment(List<Comment> listComment) {
		this.listComment = listComment;
	}

	public List<ProductDetail> getListProductDetail() {
		return listProductDetail;
	}

	public void setListProductDetail(List<ProductDetail> listProductDetail) {
		this.listProductDetail = listProductDetail;
	}
	
	
=======
>>>>>>> master
}
