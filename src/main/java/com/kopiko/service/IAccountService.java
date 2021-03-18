package com.kopiko.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kopiko.entity.Account;

@Service
public interface IAccountService {
	List<Account> findAll();
	Account insert(Account account);
	Account update(Account account);
	boolean delete(Long id);
	/**
	 * @param brand
	 * @return
	 */
	
	Account findByAccountId(Long id);
		
}
