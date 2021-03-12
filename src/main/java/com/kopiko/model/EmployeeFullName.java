/**
 * 
 * @author ADMIN
 * @date Mar 4, 2021
 */

package com.kopiko.model;

public class EmployeeFullName {

	private String fullName;
	private int age;

	public EmployeeFullName(String fullName, int age) {
		super();
		this.fullName = fullName;
		this.age = age;
	}
	
	
//	Cách 1: Sử dụng hàm constructor
//	public EmployeeFullAndDept(String firstName, String lastName, int age) {
//		super();
//		this.fullName = firstName + " " + lastName;
//		this.age = age;
//	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

}
