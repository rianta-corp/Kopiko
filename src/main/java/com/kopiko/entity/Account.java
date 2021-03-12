package com.kopiko.entity;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long accountID;
	private String userName;
	private String phone;
	private String passWord;
	private String fullName;
	private String address;
	private String avatar;
	private String email;
	private java.sql.Timestamp
	dataCreate;
	private String Role;
	private short Status;

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
			String email, java.sql.Timestamp
			dataCreate, String role, short status) {
		super();

		this.userName = userName;
		this.phone = phone;
		this.passWord = passWord;
		this.fullName = fullName;
		this.address = address;
		this.avatar = avatar;
		this.email = email;
		this.dataCreate = dataCreate;
		Role = role;
		Status = status;
	}

	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

		public Account(long accountID, String userName, String phone, String passWord, String fullName, String address,
				String avatar, String email, java.sql.Timestamp
 dataCreate, String role, short status) {
			super();
			this.accountID = accountID;
			this.userName = userName;
			this.phone = phone;
			this.passWord = passWord;
			this.fullName = fullName;
			this.address = address;
			this.avatar = avatar;
			this.email = email;
			this.dataCreate = dataCreate;
			Role = role;
			Status = status;
		}

	public long getAccountID() {
		return accountID;
	}

	public void setAccountID(long accountID) {
		this.accountID = accountID;
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

	public java.sql.Timestamp
	getDataCreate() {
		return dataCreate;
	}

	public void setDataCreate(java.sql.Timestamp
			dataCreate) {
		this.dataCreate = dataCreate;
	}

	public String getRole() {
		return Role;
	}

	public void setRole(String role) {
		Role = role;
	}

	public short getStatus() {
		return Status;
	}

	public void setStatus(short status) {
		Status = status;
	}

}
