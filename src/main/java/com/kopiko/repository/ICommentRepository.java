package com.kopiko.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kopiko.entity.Comment
;
public interface ICommentRepository extends JpaRepository<Comment, Long>{

	Comment findBycommentID(Long id);
//	List<ProductImage> findByProductIDAndAccountID(Long productID, Long accountID);
	
	
	List<Comment> findByProductIDAndAccountIDAndParentsCommentID(Long productID, Long accountID,Long parentsCommentID);
	List<Comment> findByProductID(Long productID);
	List<Comment> findByAccountID(Long accountID);
	List<Comment> findByParentsCommentID(Long parentsCommentID);
}
