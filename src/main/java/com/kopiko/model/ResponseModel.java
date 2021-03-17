/**
 * 
 * @author ADMIN
 * @date Mar 17, 2021
 */

package com.kopiko.model;

public class ResponseModel {

	private Object object;

	/**
	 * @param object
	 */
	public ResponseModel(Object object) {
		super();
		this.object = object;
	}

	/**
	 * @return the object
	 */
	public Object getObject() {
		return object;
	}

	/**
	 * @param object the object to set
	 */
	public void setObject(Object object) {
		this.object = object;
	}

}
