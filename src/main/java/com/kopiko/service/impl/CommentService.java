package com.kopiko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kopiko.entity.Comment;
import com.kopiko.repository.ICommentRepository;
import com.kopiko.service.ICommentService;

public class CommentService implements ICommentService{

	
	@Autowired
	private ICommentRepository commentRespository;

	
	
	@Override
	public List<Comment> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Comment insert(Comment comment) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Comment update(Comment comment) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(Long id) {
		// TODO Auto-generated method stub
		return false;
	}

}
