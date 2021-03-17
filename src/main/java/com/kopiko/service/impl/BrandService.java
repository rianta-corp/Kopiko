package com.kopiko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.entity.Brand;
import com.kopiko.repository.IBrandRepository;
import com.kopiko.service.IBrandService;

@Service
public class BrandService implements IBrandService{
	@Autowired
	private IBrandRepository brandRespository;

	@Override
	public List<Brand> findAll() {
		return brandRespository.findAll();
	}

	@Override
	public Brand insert(Brand brand) {
		return brandRespository.saveAndFlush(brand);
	}

	@Override
	public Brand update(Brand brand) {
		Brand oldBrand = brandRespository.getOne(brand.getBrandId());
		if(brand.getBrandImgUrl() != null) oldBrand.setBrandImgUrl(brand.getBrandImgUrl());
		if(brand.getBrandName() != null) oldBrand .setBrandName(brand.getBrandName());
		return brandRespository.saveAndFlush(oldBrand);
	}
	@Override
	public boolean delete(Long id) {
		brandRespository.deleteById(id);
		return true;
	}

	@Override
	public Brand findByBrandId(Long id) {
		// TODO Auto-generated method stub
		return brandRespository.getOne(id);
	}
	
	
}
