package com.kopiko.entity;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long productID;
	private String productName;
	private Long categoryID;
	private Long brandID;
	private Timestamp dateCreated;
	private String description;
	private Integer status;
	
	/**
	 * For create a new product object
	 * @param productName
	 * @param categoryID
	 * @param brandID
	 * @param description
	 * @param status
	 */
	public Product(String productName, Long categoryID, Long brandID, Timestamp dateCreated, String description, Integer status) {
		super();
		this.productName = productName;
		this.categoryID = categoryID;
		this.brandID = brandID;
		this.dateCreated = dateCreated;
		this.description = description;
		this.status = status;
	}
	
	/**
	 * For create a new empty product object
	 */
	public Product() {
		super();
	}

	/**
	 * For get data from database
	 * @param productID
	 * @param productName
	 * @param categoryID
	 * @param brandID
	 * @param description
	 * @param status
	 */
	public Product(Long productID, String productName, Long categoryID, Long brandID, Timestamp dateCreated, String description,
			Integer status) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.categoryID = categoryID;
		this.brandID = brandID;
		this.dateCreated = dateCreated;
		this.description = description;
		this.status = status;
	}

	public Long getProductID() {
		return productID;
	}

	public void setProductID(Long productID) {
		this.productID = productID;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Long getCategoryID() {
		return categoryID;
	}

	public void setCategoryID(Long categoryID) {
		this.categoryID = categoryID;
	}

	public Long getBrandID() {
		return brandID;
	}

	public void setBrandID(Long brandID) {
		this.brandID = brandID;
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

	public Timestamp getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Timestamp dateCreated) {
		this.dateCreated = dateCreated;
	}
	
	
}
