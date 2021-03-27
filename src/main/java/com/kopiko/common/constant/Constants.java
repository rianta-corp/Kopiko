package com.kopiko.common.constant;

public class Constants {

	/* Common character */
	public static final String COMMON_UTF8 = "UTF-8";
	public static final String COMMON_SPACE = " ";
	public static final String COMMON_HYPHEN = "-";
	public static final String COMMON_SORT_ASC = "asc";
	public static final String COMMON_SORT_DESC= "desc";
	
	/* Date Format */
	public static final String DATE_FORMAT_FOR_FILE_NAME = "yyyyMMdd-HHmm";
	
	/* The number of max item in page */
	public static final int PAGE_SIZE = 5;
	
	/* Response Code */
	public static final int RESULT_CD_FAIL = 0;
	public static final int RESULT_CD_DUPL = 1;
	public static final int RESULT_CD_SUCCESS = 100;
	
	/* Condition for search product */
	public static final String PROP_KEY_KEYWORD = "keyword";
	public static final String PROP_KEY_PRICE_FROM = "priceFrom";
	public static final String PROP_KEY_PRICE_TO = "priceTo";
	
	/* Encrypt password contants */
	public static final String ENCRYPT_CONSTANTS = "!#$%^&*!#$%^&*";
	
	/*Default variable for Role*/
	public static class Role{
		public static final Integer ROLE_USER = 0;
		public static final Integer ROLE_ADMIN = 1;
	}
	
	/*Default variable for Role*/
	public static class Account{
		public static final Integer ACTIVE_STATUS = 1;
	}
}
