/**
 * 
 */
package com.kopiko.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author rianta9
 * @datecreated 13 thg 3, 2021 19:59:10
 */
@Entity
@Table(name = "comment_image")
public class CommentImage {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(columnDefinition = "bigint", name = "comment_image_id")
	private Long commentImageId;
	
	@Column(nullable = false)
	private String imageUrl;
	
	@ManyToOne
	@JoinColumn(name = "comment_id")
	private Comment comment;

	/**
	 * For new empty object
	 */
	public CommentImage() {
		super();
	}

	public Long getCommentImageId() {
		return commentImageId;
	}

	public void setCommentImageId(Long commentImageId) {
		this.commentImageId = commentImageId;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}
	
	
}
