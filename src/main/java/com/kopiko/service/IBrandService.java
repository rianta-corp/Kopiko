package com.kopiko.service;

import java.util.List;

import com.kopiko.entity.Brand;
import com.kopiko.model.ResponseModel;

public interface IBrandService {

	/**
	 * 
	 * Get all brand
	 * 
	 * @returnList<BrandEntity>
	 * 
	 */
	List<Brand> findAll();

	/**
	 * 
	 * Add new brand
	 * 
	 * @param brandEntity
	 * @return ResponseModel
	 * 
	 */
	ResponseModel addNewBrand(Brand brandEntity);

	/**
	 * 
	 * Update brand
	 * 
	 * @param brandEntity
	 * @return ResponseModel
	 * 
	 */
	ResponseModel updateBrand(Brand brandEntity);

	/**
	 * 
	 * Find brand by brand id
	 * 
	 * @param brandId
	 * @return
	 * 
	 */
	Brand findByBrandId(Long brandId);

	/**
	 * 
	 * Delete brand by id
	 * 
	 * @param brandId
	 * 
	 */
	ResponseModel deleteBrandById(Long brandId);

	/**
	 * Find brand by brand name 
	 * 
	 * @param brandName
	 * @return BrandEntity
	 * 
	 */
	Brand findByBrandName(String brandName);
	
	
}
