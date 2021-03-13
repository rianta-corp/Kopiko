package com.kopiko.entity;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "product_detail")
public class ProductDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "bigint", name = "product_detail_id")
	private Long productDetailId;
	
	@ManyToOne
	@JoinColumn(name = "product_id", nullable = false)
	private Product product;
	
	@Column(nullable = false)
	private String size;
	
	@Column(nullable = false)
	private String color;
	
	@Column(nullable = false, columnDefinition = "money")
	private BigDecimal price;
	
	@Column(nullable = false, columnDefinition = "money")
	private BigDecimal salePrice;
	
	@Column(nullable = false)
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
	public ProductDetail(Product product, String size, String color, BigDecimal price, BigDecimal salePrice, Integer quantity) {
		super();
		this.product = product;
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
	public ProductDetail(Long productDetailId, Product product, String size, String color, BigDecimal price, BigDecimal salePrice,
			Integer quantity) {
		super();
		this.productDetailId = productDetailId;
		this.product = product;
		this.size = size;
		this.color = color;
		this.price = price;
		this.salePrice = salePrice;
		this.quantity = quantity;
	}



	public Long getProductDetailId() {
		return productDetailId;
	}

	public void setProductDetailId(Long productDetailId) {
		this.productDetailId = productDetailId;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
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

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(BigDecimal salePrice) {
		this.salePrice = salePrice;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	
}
