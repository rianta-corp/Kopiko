package com.kopiko.service;

import java.util.List;

import com.kopiko.entity.BrandEntity;
import com.kopiko.model.ResponseModel;

public interface IBrandService {

	/**
	 * 
	 * Get all brand
	 * 
	 * @returnList<BrandEntity>
	 * 
	 */
	List<BrandEntity> findAllBrand();

	/**
	 * 
	 * Add new brand
	 * 
	 * @param brandEntity
	 * @return ResponseModel
	 * 
	 */
	ResponseModel addNewBrand(BrandEntity brandEntity);

	/**
	 * 
	 * Update brand
	 * 
	 * @param brandEntity
	 * @return ResponseModel
	 * 
	 */
	ResponseModel updateBrand(BrandEntity brandEntity);

	/**
	 * 
	 * Find brand by brand id
	 * 
	 * @param brandId
	 * @return
	 * 
	 */
	BrandEntity findByBrandId(Long brandId);

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
	BrandEntity findByBrandName(String brandName);
	
	
}
