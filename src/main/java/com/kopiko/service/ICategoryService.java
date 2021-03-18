/**
 * 
 * @author ADMIN
 * @date Mar 10, 2021
 */

package com.kopiko.service;

import java.util.List;

import com.kopiko.entity.CategoryEntity;

public interface ICategoryService {

	/**
	 * Add new category entity
	 * 
	 * @param categoryEntity
	 * @return new categoryEntity
	 * 
	 */
	CategoryEntity addCategory(CategoryEntity categoryEntity);
	
	/**
	 * Update category
	 * 
	 * @param categoryEntity
	 * @return categoryEntity
	 * 
	 */
	CategoryEntity updateCategory(CategoryEntity categoryEntity);
	
	/**
	 * Delete category
	 * @param categortId
	 * 
	 */
	void deleteCategory(Long categortId);
	
	/**
	 * Search category by name
	 * 
	 * @param categoryName
	 * @return List<CategoryEntity>
	 * 
	 */
	List<CategoryEntity> searchCategoryByName(String categoryName);
	
	List<CategoryEntity> getAllCategory();
	CategoryEntity insert(CategoryEntity categoryEntity);
	CategoryEntity update(CategoryEntity categoryEntity);
	boolean delete(Long id);
	List<CategoryEntity> findAll();
}
