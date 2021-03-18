package com.kopiko.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kopiko.entity.Comment;

@Service
public interface ICommentService {
	List<Comment> findAll();
	Comment insert(Comment comment);
	Comment update(Comment comment);
	boolean delete(Long id);
	
	Comment findByCommentId(Long id);	
}
