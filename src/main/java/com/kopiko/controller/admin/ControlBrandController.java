/**
 * 
 */
package com.kopiko.controller.admin;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kopiko.entity.Brand;
import com.kopiko.service.IBrandService;

/**
 * @author rianta9
 * @datecreated 15 thg 3, 2021 09:22:18
 */

@RestController
@RequestMapping("/api/v1/admin")
public class ControlBrandController {
	@Autowired
	private IBrandService brandService;
	
	@GetMapping("/brand")
	public List<Brand> getListBrand(){
		List<Brand> list = brandService.findAll();
		return list;
	}
	
	@GetMapping("/brand/{id}")
	public Brand getBrand(@PathVariable(name = "id") Long id) {
		return brandService.findByBrandId(id);
	}
	
	@PostMapping("/brand")
	public Brand  insertBrand(@RequestBody Brand brand) {
		return brandService.insert(brand);
	}
	
	@PutMapping("/brand/{id}")
	public Brand updateBrand(@PathVariable(name = "id") Long id, @RequestBody Brand brand) {
		return brandService.update(brand);
	}
	
	@DeleteMapping("/brand/{id}")
	public ResponseEntity deleteBrand(@PathVariable(name = "id") Long id) {
		brandService.delete(id);
		return ResponseEntity.ok().build();
	}
	
}
