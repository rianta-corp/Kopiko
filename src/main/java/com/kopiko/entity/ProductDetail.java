package com.kopiko.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ProductDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long productDetailID;
	private Long productID;
	private String size;
	private String color;
	private Long price;
	private Long salePrice;
	private Integer quantity;
	
	/**
	 * For create new object
	 * @param productID
	 * @param size
	 * @param color
	 * @param price
	 * @param salePrice
	 * @param quantity
	 */
	public ProductDetail(Long productID, String size, String color, Long price, Long salePrice, Integer quantity) {
		super();
		this.productID = productID;
		this.size = size;
		this.color = color;
		this.price = price;
		this.salePrice = salePrice;
		this.quantity = quantity;
	}
	
	/**
	 * For create empty object
	 */
	public ProductDetail() {
		super();
	}

	
	/**
	 * For get data from database
	 * @param productDetailID
	 * @param productID
	 * @param size
	 * @param color
	 * @param price
	 * @param salePrice
	 * @param quantity
	 */
	public ProductDetail(Long productDetailID, Long productID, String size, String color, Long price, Long salePrice,
			Integer quantity) {
		super();
		this.productDetailID = productDetailID;
		this.productID = productID;
		this.size = size;
		this.color = color;
		this.price = price;
		this.salePrice = salePrice;
		this.quantity = quantity;
	}



	public Long getProductDetailID() {
		return productDetailID;
	}

	public void setProductDetailID(Long productDetailID) {
		this.productDetailID = productDetailID;
	}

	public Long getProductID() {
		return productID;
	}

	public void setProductID(Long productID) {
		this.productID = productID;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public Long getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(Long salePrice) {
		this.salePrice = salePrice;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	
}
