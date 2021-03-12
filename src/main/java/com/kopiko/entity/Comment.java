package com.kopiko.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Comment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private long commentID;
	private long accountID;
	private long productID;
	private java.sql.Timestamp  dateCreated;
	private String noiDung;
	private long parentsCommentID;


	

	public Comment() {
		super();
		
	}

	public long getCommentID() {
		return commentID;
	}
	public Comment( long accountID, long productID, java.sql.Timestamp
 dateCreated, String noiDung,
			long parentsCommentID) {
		super();
		
		this.accountID = accountID;
		this.productID = productID;
		this.dateCreated = dateCreated;
		this.noiDung = noiDung;
		this.parentsCommentID = parentsCommentID;
	}
	public Comment(long commentID, long accountID, long productID, java.sql.Timestamp
 dateCreated, String noiDung,
		long parentsCommentID) {
	super();
	this.commentID = commentID;
	this.accountID = accountID;
	this.productID = productID;
	this.dateCreated = dateCreated;
	this.noiDung = noiDung;
	this.parentsCommentID = parentsCommentID;
}
	public void setCommentID(long commentID) {
		this.commentID = commentID;
	}

	public long getAccountID() {
		return accountID;
	}

	public void setAccountID(long accountID) {
		this.accountID = accountID;
	}

	public long getProductID() {
		return productID;
	}

	public void setProductID(long productID) {
		this.productID = productID;
	}

	public java.sql.Timestamp
 getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(java.sql.Timestamp
 dateCreated) {
		this.dateCreated = dateCreated;
	}

	public String getNoiDung() {
		return noiDung;
	}

	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}

	public long getParentsCommentID() {
		return parentsCommentID;
	}

	public void setParentsCommentID(long parentsCommentID) {
		this.parentsCommentID = parentsCommentID;
	}

}
