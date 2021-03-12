/**
 * 
 * @author ADMIN
 * @date Mar 4, 2021
 */

package com.kopiko.model;

public class EmployeeDepartment {

	private String fullName;

	private int age;

	private String deptName;

	public EmployeeDepartment(String fullName, int age, String deptName) {
		super();
		this.fullName = fullName;
		this.age = age;
		this.deptName = deptName;
	}

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

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

}
