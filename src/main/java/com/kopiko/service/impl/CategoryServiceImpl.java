/**
 * 
 * @author ADMIN
 * @date Mar 17, 2021
 */

package com.kopiko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.entity.CategoryEntity;
import com.kopiko.repository.ICategoryRepository;
import com.kopiko.service.ICategoryService;

@Service
public class CategoryServiceImpl implements ICategoryService {
	
	@Autowired
	private ICategoryRepository categoryRepository;
	
	@Override
	public CategoryEntity addCategory(CategoryEntity categoryEntity) {
		return categoryRepository.saveAndFlush(categoryEntity);
	}

	@Override
	public CategoryEntity updateCategory(CategoryEntity categoryEntity) {
		return categoryRepository.saveAndFlush(categoryEntity);
	}

	@Override
	public void deleteCategory(Long categortId) {
		categoryRepository.deleteById(categortId);
	}

	@Override
	public List<CategoryEntity> searchCategoryByName(String categoryName) {
		return categoryRepository.findByCategoryNameContaining(categoryName);
	}

	@Override
	public List<CategoryEntity> getAllCategory() {
		return categoryRepository.findAll();
	}
}
