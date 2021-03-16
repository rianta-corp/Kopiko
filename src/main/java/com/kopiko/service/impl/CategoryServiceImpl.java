package com.kopiko.service.impl;
/**
 * 
 * @author ADMIN
 * @date Mar 10, 2021
 */


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.entity.CategoryEntity;
import com.kopiko.repository.ICategoryRepository;
import com.kopiko.service.ICategoryService;

@Service
public class CategoryServiceImpl implements ICategoryService  {

	@Autowired
	private ICategoryRepository categoryRepository;

	@Override
	public CategoryEntity addCategory(CategoryEntity categoryEntity) {
		return categoryRepository.saveAndFlush(categoryEntity);
	}

	@Override
	public CategoryEntity insert(CategoryEntity categoryEntity) {
		return categoryRepository.saveAndFlush(categoryEntity);
	}

	@Override
	public CategoryEntity update(CategoryEntity categoryEntity) {
		return categoryRepository.saveAndFlush(categoryEntity);
	}

	@Override
	public boolean delete(Long id) {
		categoryRepository.deleteById(id);
		return true;
	}

	@Override
	public List<CategoryEntity> findAll() {
		return categoryRepository.findAll();
	}
	
	// To do someting
}
