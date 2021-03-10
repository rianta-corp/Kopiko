package com.kopiko.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Brand {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long brandID;
	private String brandName;
	private String brandImgUrl;
	private String info;
	public Brand(String brandName, String brandImgUrl, String info) {
		super();
		this.brandName = brandName;
		this.brandImgUrl = brandImgUrl;
		this.info = info;
	}
	
	public Brand() {
		super();
	}

	public Brand(Long brandID, String brandName, String brandImgUrl, String info) {
		super();
		this.brandID = brandID;
		this.brandName = brandName;
		this.brandImgUrl = brandImgUrl;
		this.info = info;
	}

	public Long getBrandID() {
		return brandID;
	}

	public void setBrandID(Long brandID) {
		this.brandID = brandID;
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
