package com.kopiko.entity;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;


@Entity
@Table(name = "account")
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "bigint", name = "account_id")
	private Long accountId;
	private String username;
	
	@Column(nullable = false)
	private String phone;
	
	@Column(nullable = false)
	private String password;
	
	@Column(nullable = false, columnDefinition = "nvarchar(30)")
	private String fullName;
	
	@Column(columnDefinition = "nvarchar(255)")
	private String address;
	private String avatar;
	private String email;
	
	@Column(nullable = false, columnDefinition = "datetime")
	@CreationTimestamp
	private Date dateCreated;
	
	@Column(nullable = false)
	@ColumnDefault("0") // User
	private String role;
	
	@Column(nullable = false)
	@ColumnDefault("1") // Active
	private Integer status;

	/**
	 * 
	 * @param username
	 * @param phone
	 * @param password
	 * @param fullName
	 * @param address
	 * @param avatar
	 * @param email
	 * @param dataCreate
	 * @param role
	 * @param status
	 */
	public Account(String username, String phone, String password, String fullName, String address, String avatar,
			String email, Date
			dateCreated, String role, Integer status) {
		super();

		this.username = username;
		this.phone = phone;
		this.password = password;
		this.fullName = fullName;
		this.address = address;
		this.avatar = avatar;
		this.email = email;
		this.dateCreated = dateCreated;
		this.role = role;
		this.status = status;
	}

	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

		public Account(Long accountId, String username, String phone, String password, String fullName, String address,
				String avatar, String email, Date
				dateCreated, String role, Integer status) {
			super();
			this.accountId = accountId;
			this.username = username;
			this.phone = phone;
			this.password = password;
			this.fullName = fullName;
			this.address = address;
			this.avatar = avatar;
			this.email = email;
			this.dateCreated = dateCreated;
			this.role = role;
			this.status = status;
		}

	public long getAccountId() {
		return accountId;
	}

	public void setAccountId(Long accountId) {
		this.accountId = accountId;
	}

	public String getUserName() {
		return username;
	}

	public void setUserName(String username) {
		this.username = username;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassWord() {
		return password;
	}

	public void setPassWord(String password) {
		this.password = password;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date
	getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date
			dateCreated) {
		this.dateCreated = dateCreated;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
