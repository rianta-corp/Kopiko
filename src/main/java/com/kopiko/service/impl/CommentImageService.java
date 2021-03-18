/**
 * 
 */
package com.kopiko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.entity.Brand;
import com.kopiko.entity.Comment;
import com.kopiko.entity.CommentImage;
import com.kopiko.repository.IBrandRepository;
import com.kopiko.repository.ICommentImageRepository;
import com.kopiko.service.ICommentImageService;

/**
 * @author rianta9
 * @datecreated 13 thg 3, 2021 20:48:30
 */
@Service
public class CommentImageService implements ICommentImageService{
	@Autowired
	private ICommentImageRepository commentImageRespository;

	@Override
	public List<CommentImage> findAll() {
		return commentImageRespository.findAll();
	}

	@Override
	public CommentImage insert(CommentImage commentImage) {
		return commentImageRespository.saveAndFlush(commentImage);
	}

	@Override
	public CommentImage update(CommentImage commentImage) {
		CommentImage oldCommentImage = commentImageRespository.getOne(commentImage.getCommentImageId());
//		if(commentImage.getCommentImageImgUrl() != null) oldCommentImage.setCommentImageImgUrl(commentImage.getCommentImageImgUrl());
//		if(commentImage.getBrandName() != null) oldBrand .setBrandName(brand.getBrandName());
		return commentImageRespository.saveAndFlush(oldCommentImage);
	}
	
	@Override
	public boolean delete(Long id) {
		commentImageRespository.deleteById(id);
		return true;
	}

	@Override
	public CommentImage findByCommentImageId(Long id) {
		// TODO Auto-generated method stub
		return commentImageRespository.getOne(id);
	}
	
	
}
