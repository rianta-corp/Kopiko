package com.kopiko.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kopiko.entity.Brand;

@Service
public interface IBrandService {
	List<Brand> findAll();
	Brand insert(Brand brand);
	Brand update(Brand brand);
	boolean delete(Long id);	
}
