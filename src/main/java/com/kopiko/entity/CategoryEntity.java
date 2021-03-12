///**
// * 
// * @author ADMIN
// * @date Mar 10, 2021
// */
//
//package com.kopiko.entity;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.Table;
//
//@Entity
//@Table(name = "Category")
//public class CategoryEntity {
//
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	@Column(name = "CategoryID")
//	private Long categoryId;
//
//	@Column(name = "categoryCode")
//	private String categoryCode;
//
//	@Column(name = "categoryName")
//	private String categoryName;
//
//	@Column(name = "parentCategoryId")
//	private Long parentCategoryId;
//
//	public CategoryEntity(String categoryCode, String categoryName, Long parentCategoryId) {
//		super();
//		this.categoryCode = categoryCode;
//		this.categoryName = categoryName;
//		this.parentCategoryId = parentCategoryId;
//	}
//
//	public CategoryEntity() {
//		super();
//	}
//
//	/**
//	 * @return the categoryId
//	 */
//	public Long getCategoryId() {
//		return categoryId;
//	}
//
//	/**
//	 * @param categoryId the categoryId to set
//	 */
//	public void setCategoryId(Long categoryId) {
//		this.categoryId = categoryId;
//	}
//
//	/**
//	 * @return the categoryCode
//	 */
//	public String getCategoryCode() {
//		return categoryCode;
//	}
//
//	/**
//	 * @param categoryCode the categoryCode to set
//	 */
//	public void setCategoryCode(String categoryCode) {
//		this.categoryCode = categoryCode;
//	}
//
//	/**
//	 * @return the categoryName
//	 */
//	public String getCategoryName() {
//		return categoryName;
//	}
//
//	/**
//	 * @param categoryName the categoryName to set
//	 */
//	public void setCategoryName(String categoryName) {
//		this.categoryName = categoryName;
//	}
//
//	/**
//	 * @return the parentCategoryId
//	 */
//	public Long getParentCategoryId() {
//		return parentCategoryId;
//	}
//
//	/**
//	 * @param parentCategoryId the parentCategoryId to set
//	 */
//	public void setParentCategoryId(Long parentCategoryId) {
//		this.parentCategoryId = parentCategoryId;
//	}
//
//}
