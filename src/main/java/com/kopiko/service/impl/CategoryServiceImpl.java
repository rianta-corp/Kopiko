/**
 * 
 * @author ADMIN
 * @date Mar 17, 2021
 */

package com.kopiko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.common.constant.Constants;
import com.kopiko.entity.CategoryEntity;
import com.kopiko.model.ResponseModel;
import com.kopiko.repository.ICategoryRepository;
import com.kopiko.service.ICategoryService;

@Service
public class CategoryServiceImpl implements ICategoryService {

	@Autowired
	private ICategoryRepository categoryRepository;

	@Override
	public ResponseModel addCategory(CategoryEntity categoryEntity) {
		int responseCode = Constants.RESULT_CD_FAIL;
		try {
			if(findByCategoryName(categoryEntity.getCategoryName()) != null 
		       && findByCategoryCode(categoryEntity.getCategoryCode()) != null) {
				responseCode = Constants.RESULT_CD_DUPL;
			} else {
				responseCode = Constants.RESULT_CD_SUCCESS;
				categoryRepository.saveAndFlush(categoryEntity);
			}
		} catch (Exception e) {
			responseCode = Constants.RESULT_CD_FAIL;
			System.out.println("Error when add new category! " + e.getMessage() );
		}
		return new ResponseModel(responseCode);
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
	public ResponseModel updateCategory(CategoryEntity categoryEntity) {
		int responseCode = Constants.RESULT_CD_FAIL;
		try {
			/*Check category code and category name duplicated*/
			if(findByCategoryCodeAndCategoryCodeNot(categoryEntity.getCategoryCode(), categoryEntity.getCategoryName()) != null) {
				responseCode = Constants.RESULT_CD_DUPL;
			} else {
				responseCode = Constants.RESULT_CD_SUCCESS;
				categoryRepository.saveAndFlush(categoryEntity);
			}
		} catch (Exception e) {
			System.out.println("Update category failed!" + e.getMessage());
		}
		return new ResponseModel(responseCode);
	}

	@Override
	public CategoryEntity findByCategoryId(Long categoryId) {
		return categoryRepository.findByCategoryId(categoryId);
	}

	@Override
	public List<CategoryEntity> getAllCategory() {
		return categoryRepository.findAll();
	}

	@Override
	public CategoryEntity findOne(Long categoryId) {
		// TODO Auto-generated method stub
		return categoryRepository.getOne(categoryId);
	}

	// To do someting
	public CategoryEntity findByCategoryName(String categoryName) {
		return categoryRepository.findByCategoryName(categoryName);
	}

	@Override
	public CategoryEntity findByCategoryCode(String categoryCode) {
		return categoryRepository.findByCategoryCode(categoryCode);
	}

	@Override
	public CategoryEntity findByCategoryCodeAndCategoryCodeNot(String categoryCode, String categoryName) {
		return categoryRepository.findByCategoryCodeAndCategoryCodeNot(categoryCode, categoryName);
	}

	@Override
	public CategoryEntity insert(CategoryEntity categoryEntity) {
		// TODO Auto-generated method stub
		return categoryRepository.saveAndFlush(categoryEntity);
	}

	@Override
	public CategoryEntity update(CategoryEntity categoryEntity) {
		// TODO Auto-generated method stub
		return categoryRepository.saveAndFlush(categoryEntity);
	}

	@Override
	public boolean delete(Long id) {
		// TODO Auto-generated method stub
		categoryRepository.deleteById(id);
		return true;
	}

	@Override
	public List<CategoryEntity> findAll() {
		// TODO Auto-generated method stub
		return categoryRepository.findAll();
	}

}
