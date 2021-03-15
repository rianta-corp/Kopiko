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
		return brandRespository.saveAndFlush(brand);
	}

	@Override
	public boolean delete(Long id) {
		brandRespository.deleteById(id);
		return true;
	}
	
	
}
