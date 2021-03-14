package com.kopiko.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "product_image")
public class ProductImage {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(columnDefinition = "bigint", name = "product_image_id")
	private Long productImageId;
	
	@ManyToOne
	@JoinColumn(nullable = false, name = "product_id")
	private Product product;
	
	@Column(nullable = false)
	private String imageUrl;
	
	
	/**
	 * For create a new object
	 * @param productID
	 * @param imageUrl
	 */
	public ProductImage(Product product, String imageUrl) {
		super();
		this.product = product;
		this.imageUrl = imageUrl;
	}
	
	/**
	 * For create a new empty object
	 */
	public ProductImage() {
		super();
	}

	
	/**
	 * For get data from database
	 * @param productImageId
	 * @param productId
	 * @param imageUrl
	 */
	public ProductImage(Long productImageId, Product product, String imageUrl) {
		super();
		this.productImageId = productImageId;
		this.product = product;
		this.imageUrl = imageUrl;
	}

	public Long getImageId() {
		return productImageId;
	}

	public void setImageId(Long productImageId) {
		this.productImageId = productImageId;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}	
}