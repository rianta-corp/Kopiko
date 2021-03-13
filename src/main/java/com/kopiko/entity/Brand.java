package com.kopiko.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * @author rianta9
 * @datecreated 13 thg 3, 2021 11:17:28
 * @lastupdated 2021-03-13 11:17:28.504
 */
@Entity
@Table(name = "brand")
public class Brand {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "bigint", name = "brand_id")
	private Long brandId;
	
	@Column(nullable = false, columnDefinition = "nvarchar(50)")
	private String brandName;
	
	@Column(nullable = false)
	private String brandImgUrl;
	private String info;
	
	/**
	 * For create a new object
	 * @param brandName
	 * @param brandImgUrl
	 * @param info
	 */
	public Brand(String brandName, String brandImgUrl, String info) {
		super();
		this.brandName = brandName;
		this.brandImgUrl = brandImgUrl;
		this.info = info;
	}
	
	/**
	 * For create a new empty object
	 */
	public Brand() {
		super();
	}

	/**
	 * For get data from database
	 * @param brandID
	 * @param brandName
	 * @param brandImgUrl
	 * @param info
	 */
	public Brand(Long brandId, String brandName, String brandImgUrl, String info) {
		super();
		this.brandId = brandId;
		this.brandName = brandName;
		this.brandImgUrl = brandImgUrl;
		this.info = info;
	}

	public Long getBrandId() {
		return brandId;
	}

	public void setBrandId(Long brandId) {
		this.brandId = brandId;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getBrandImgUrl() {
		return brandImgUrl;
	}

	public void setBrandImgUrl(String brandImgUrl) {
		this.brandImgUrl = brandImgUrl;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}
	
	
	
	
}