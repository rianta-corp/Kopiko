/**
 * 
 * @author ADMIN
 * @date Mar 10, 2021
 */

package com.kopiko.service;

import java.util.List;

import com.kopiko.entity.CategoryEntity;

public interface ICategoryService {

	CategoryEntity addCategory(CategoryEntity categoryEntity);
	CategoryEntity insert(CategoryEntity categoryEntity);
	CategoryEntity update(CategoryEntity categoryEntity);
	boolean delete(Long id);
	List<CategoryEntity> findAll();
}
