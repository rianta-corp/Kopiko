package com.kopiko.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kopiko.entity.Comment;
@Repository
public interface ICommentRepository extends JpaRepository<Comment, Long>{

//	Comment findByCommentId(Long id);
//	List<Comment> findAllByProductProductIdAndAccountAccountId(Long productID, Long accountID);
//	List<Comment> findAllByProductProductIdAndAccountAccountIdAndParentsCommentId(Long productId, Long accountId, Long parentsCommentId);
//	
//	@Query(value = "select * from comment as c where c.product_id = ?1", nativeQuery = true)
//	List<Comment> findAllByProductProductId(Long productId);
//	List<Comment> findAllByAccountAccountId(Long accountId);
//	List<Comment> findAllByParentsCommentId(Long parentsCommentId);
}
