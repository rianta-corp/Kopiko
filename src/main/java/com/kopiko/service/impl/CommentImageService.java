/**
 * 
 */
package com.kopiko.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.entity.CommentImage;
import com.kopiko.repository.ICommentImageRepository;
import com.kopiko.service.ICommentImageService;

/**
 * @author rianta9
 * @datecreated 13 thg 3, 2021 20:48:30
 */
@Service
public class CommentImageService implements ICommentImageService{
	@Autowired
	private ICommentImageRepository commentImageService;
	@Override
	public CommentImage insert(CommentImage commentImage) {
		return commentImageService.saveAndFlush(commentImage);
	}

	@Override
	public CommentImage update(CommentImage commentImage) {
		return commentImageService.saveAndFlush(commentImage);
	}

	@Override
	public boolean delete(Long id) {
		commentImageService.deleteById(id);
		return true;
	}

}
