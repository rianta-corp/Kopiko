package com.kopiko.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kopiko.entity.Account;

@Service
public interface IAccountService {
//<<<<<<< HEAD
	List<Account> findAll();
	Account insert(Account account);
	Account update(Account account);
	boolean delete(Long id);
	/**
	 * @param brand
	 * @return
	 */
	
	Account findByAccountId(Long id);
		
//=======

List<Account>findAll();
Account findOne(Long accountId);
Account insert(Account account);
Account update(Account account);
List<Account> search(String A);
boolean delete(Account account);
void save(Account account);
/**
 * @param userName
 * @return
 */
Account findByUsername(String userName);
/**
 * @param username
 * @param password
 * @return
 */
boolean checkLogin(String username, String password);
/**
 * @param username
 * @param password
 * @return
 */
boolean checkAdmin(String username, String password);
/**
 * @param username
 * @param password
 * @return
 */
boolean checkUser(String username, String password);	
//>>>>>>> f2c8361b5fae5ba51032de01c58b6cfbb5df14f1
}
