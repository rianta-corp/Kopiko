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

import com.kopiko.entity.Comment;
import com.kopiko.service.ICommentService;

@RestController
@RequestMapping("/api/v1/admin")

public class CommentController {
	@Autowired
	private ICommentService commentService;
	
	
	@GetMapping("/comment")
	public List<Comment> getListComment(){
		List<Comment> list = commentService.findAll();
		return list;
	}
	
	@GetMapping("/comment/{id}")
	public Comment getComment(@PathVariable(name = "id") Long id) {
		return commentService.findByCommentId(id);
	}
	
	@PostMapping("/comment")
	public Comment  insertComment(@RequestBody Comment comment) {
		return commentService.insert(comment);
	}
	
	@PutMapping("/comment/{id}")
	public Comment updateComment(@PathVariable(name = "id") Long id, @RequestBody Comment comment) {
		return commentService.update(comment);
	}
	
	@DeleteMapping("/comment/{id}")
	public ResponseEntity deleteComment(@PathVariable(name = "id") Long id) {
	commentService.delete(id);
		return ResponseEntity.ok().build();
	}
	
}