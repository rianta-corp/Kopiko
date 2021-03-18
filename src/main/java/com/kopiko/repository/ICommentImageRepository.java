/**
 * 
 */
package com.kopiko.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kopiko.entity.CommentImage;

@Repository
public interface ICommentImageRepository extends JpaRepository<CommentImage, Long>{
//	CommentImage findByCommentImageId(Long id);
//	List<CommentImage> findAllByCommentCommentId(Long commentId);
}
