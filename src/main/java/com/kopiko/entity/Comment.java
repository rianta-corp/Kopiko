package com.kopiko.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name = "comment")
public class Comment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "bigint", name = "comment_id")
	private Long commentId;
	
	@ManyToOne
	@JoinColumn(name = "account_id")
	private Account account;
	
	@ManyToOne
	@JoinColumn(nullable = false, name = "product_id")
	private Product product;
	
	@Column(nullable = false, columnDefinition = "timestamp")
	@CreationTimestamp
	private Timestamp dateCreated;
	
	@Column(name = "[content]", nullable = false)
	private String content;
	
	@Column(columnDefinition = "bigint")
	private Long parentsCommentId;

	public Comment(Long commentId, Account account, Product product, Timestamp dateCreated, String content,
			Long parentsCommentId) {
		super();
		this.commentId = commentId;
		this.account = account;
		this.product = product;
		this.dateCreated = dateCreated;
		this.content = content;
		this.parentsCommentId = parentsCommentId;
	}

	public Comment(Account account, Product product, Timestamp dateCreated, String content, Long parentsCommentId) {
		super();
		this.account = account;
		this.product = product;
		this.dateCreated = dateCreated;
		this.content = content;
		this.parentsCommentId = parentsCommentId;
	}

	public Comment() {
		super();
	}
	
	

	public Long getCommentId() {
		return commentId;
	}

	public void setCommentId(Long commentId) {
		this.commentId = commentId;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Timestamp getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Timestamp dateCreated) {
		this.dateCreated = dateCreated;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Long getParentsCommentId() {
		return parentsCommentId;
	}

	public void setParentsCommentId(Long parentsCommentId) {
		this.parentsCommentId = parentsCommentId;
	}
}
