package com.kopiko.entity;



import java.sql.Timestamp;

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
	private String userName;
	
	@Column(nullable = false)
	private String phone;
	
	@Column(nullable = false)
	private String passWord;
	
	@Column(nullable = false)
	private String fullName;
	private String address;
	private String avatar;
	private String email;
	
	@Column(nullable = false, columnDefinition = "timestamp")
	@CreationTimestamp
	private Timestamp dataCreated;
	
	@Column(nullable = false)
	@ColumnDefault("0") // User
	private String role;
	
	@Column(nullable = false)
	@ColumnDefault("1") // Active
	private Integer status;

	/**
	 * 
	 * @param userName
	 * @param phone
	 * @param passWord
	 * @param fullName
	 * @param address
	 * @param avatar
	 * @param email
	 * @param dataCreate
	 * @param role
	 * @param status
	 */
	public Account(String userName, String phone, String passWord, String fullName, String address, String avatar,
			String email, Timestamp
			dataCreated, String role, Integer status) {
		super();

		this.userName = userName;
		this.phone = phone;
		this.passWord = passWord;
		this.fullName = fullName;
		this.address = address;
		this.avatar = avatar;
		this.email = email;
		this.dataCreated = dataCreated;
		this.role = role;
		this.status = status;
	}

	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

		public Account(Long accountId, String userName, String phone, String passWord, String fullName, String address,
				String avatar, String email, Timestamp
				dataCreated, String role, Integer status) {
			super();
			this.accountId = accountId;
			this.userName = userName;
			this.phone = phone;
			this.passWord = passWord;
			this.fullName = fullName;
			this.address = address;
			this.avatar = avatar;
			this.email = email;
			this.dataCreated = dataCreated;
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
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
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

	public Timestamp
	getDataCreated() {
		return dataCreated;
	}

	public void setDataCreated(Timestamp
			dataCreated) {
		this.dataCreated = dataCreated;
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
