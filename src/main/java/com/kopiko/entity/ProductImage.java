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
	@Column(columnDefinition = "bigint", name = "image_id")
	private Long imageId;
	
	@ManyToOne
	@JoinColumn(nullable = false, name = "product_id")
	private Product product;
	
	@Column(nullable = false)
	private String imageUrl;
	
	@ManyToOne
	@JoinColumn(name = "account_id", nullable = false)
	private Account account;
	
	/**
	 * For create a new object
	 * @param productID
	 * @param imageUrl
	 * @param accountID
	 */
	public ProductImage(Product product, String imageUrl, Account account) {
		super();
		this.product = product;
		this.imageUrl = imageUrl;
		this.account = account;
	}
	
	/**
	 * For create a new empty object
	 */
	public ProductImage() {
		super();
	}

	
	/**
	 * For get data from database
	 * @param imageId
	 * @param productId
	 * @param imageUrl
	 * @param accountId
	 */
	public ProductImage(Long imageId, Product product, String imageUrl, Account account) {
		super();
		this.imageId = imageId;
		this.product = product;
		this.imageUrl = imageUrl;
		this.account = account;
	}

	public Long getImageId() {
		return imageId;
	}

	public void setImageId(Long imageId) {
		this.imageId = imageId;
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
	
	public Account getAccount() {
		return this.account;
	}
	
	public void setAccount(Account account) {
		this.account = account;
	}
}