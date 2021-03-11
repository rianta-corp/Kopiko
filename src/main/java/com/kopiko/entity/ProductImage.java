package com.kopiko.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ProductImage {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long imageID;
	private Long productID;
	private String imageUrl;
	private Long accountID;
	
	/**
	 * For create a new object
	 * @param productID
	 * @param imageUrl
	 * @param accountID
	 */
	public ProductImage(Long productID, String imageUrl, Long accountID) {
		super();
		this.productID = productID;
		this.imageUrl = imageUrl;
		this.accountID = accountID;
	}
	
	/**
	 * For create a new empty object
	 */
	public ProductImage() {
		super();
	}

	
	/**
	 * For get data from database
	 * @param imageID
	 * @param productID
	 * @param imageUrl
	 * @param accountID
	 */
	public ProductImage(Long imageID, Long productID, String imageUrl, Long accountID) {
		super();
		this.imageID = imageID;
		this.productID = productID;
		this.imageUrl = imageUrl;
		this.accountID = accountID;
	}

	public Long getImageID() {
		return imageID;
	}

	public void setImageID(Long imageID) {
		this.imageID = imageID;
	}

	public Long getProductID() {
		return productID;
	}

	public void setProductID(Long productID) {
		this.productID = productID;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	
	public Long getAccountID() {
		return this.accountID;
	}
	
	public void setAccountID(Long accountID) {
		this.accountID = accountID;
	}
}
