package com.kopiko.controller.web;

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
import com.kopiko.entity.CommentImage;
import com.kopiko.service.ICommentImageService;

@RestController
@RequestMapping("api/v1/admin")
public class CommentImageController {
	@Autowired
	private ICommentImageService commentImageService;
	
	
	@GetMapping("/commentImage")
	public List<CommentImage> getListCommentImage(){
		List<CommentImage> list = commentImageService.findAll();
		return list;
	}
	
	@GetMapping("/commentImage/{id}")
	public CommentImage getCommentImage(@PathVariable(name = "id") Long id) {
		return commentImageService.findByCommentImageId(id);
	}
	
	@PostMapping("/commentImage")
	public CommentImage  insertCommentImage(@RequestBody CommentImage commentImage) {
		return commentImageService.insert(commentImage);
	}
	
	@PutMapping("/commentImage/{id}")
	public CommentImage updateCommentImage(@PathVariable(name = "id") Long id, @RequestBody CommentImage commentImage) {
		return commentImageService.update(commentImage);
	}
	
	@DeleteMapping("/commentImage/{id}")
	public ResponseEntity deleteCommentImage(@PathVariable(name = "id") Long id) {
		commentImageService.delete(id);
		return ResponseEntity.ok().build();
	}
	
}
