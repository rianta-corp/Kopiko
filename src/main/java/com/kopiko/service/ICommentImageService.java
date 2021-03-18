/**
 * 
 */
package com.kopiko.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kopiko.entity.Comment;
import com.kopiko.entity.CommentImage;

/**
 * @author rianta9
 * @datecreated 13 thg 3, 2021 20:46:36
 */

@Service
public interface ICommentImageService {
	CommentImage insert(CommentImage commentImage);
	CommentImage update(CommentImage commentImage);
	
	List<CommentImage> findAll();
	boolean delete(Long id);
	CommentImage findByCommentImageId(Long id);
}
