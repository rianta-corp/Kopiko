package com.kopiko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.entity.Brand;
//
//import com.kopiko.entity.Account;
import com.kopiko.entity.Comment;
import com.kopiko.repository.IBrandRepository;
import com.kopiko.repository.ICommentRepository;
import com.kopiko.service.ICommentService;

@Service
public class CommentService implements ICommentService{

	
	@Autowired
	private ICommentRepository commentRespository;

	@Override
	public List<Comment> findAll() {
		return commentRespository.findAll();
	}

	@Override
	public Comment insert(Comment comment) {
		return commentRespository.saveAndFlush(comment);
	}

	@Override
	public Comment update(Comment comment) {
		Comment oldComment = commentRespository.getOne(comment.getCommentId());
		if(comment.getContent() != null) oldComment.setContent(comment.getContent());
//		if(comment.getCommentName() != null) oldComment .setCommentName(comment.getCommentName());
		return commentRespository.saveAndFlush(oldComment);
	}
	@Override
	public boolean delete(Long id) {
		commentRespository.deleteById(id);
		return true;
	}

	@Override
	public Comment findByCommentId(Long id) {
		// TODO Auto-generated method stub
		return commentRespository.getOne(id);
	}
	
	
}