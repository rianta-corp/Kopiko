package com.kopiko.service.impl;

import java.util.List;
//
//import javax.persistence.Entity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.entity.Account;
import com.kopiko.repository.IAccountRepository;
import com.kopiko.service.IAccountService;

@Service
public class AccountService implements IAccountService {

	@Autowired
	private IAccountRepository accountRepository;
	
	
	@Override
	public List<Account> findAll() {
		// TODO Auto-generated method stub
		return accountRepository.findAll();
	}

	@Override
	public Account insert(Account account) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Account update(Account account) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public boolean delete(Account account) {
	
		return false;
	}
	
	@Override
	public void  save(Account account) {
		 accountRepository.save(account);
	}
	
	
	@Override
	public Account findOne(Long accountId) {
		
		return accountRepository.getOne( accountId);
	}

	@Override
	public List<Account> search(String A) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Account findByUsername(String userName) {
		// TODO Auto-generated method stub
		return accountRepository.findByUsername(userName);
	}

	@Override
	public boolean checkLogin(String username, String password) {
		Account result = accountRepository.findByUsernameAndPassword(username, password);
		if(result != null) return true;
		return false;
	}

	@Override
	public boolean checkAdmin(String username, String password) {
		Account result = accountRepository.findByUsernameAndPassword(username, password);
		if(result != null && result.getRole().equalsIgnoreCase("admin")) return true;
		return false;
	}

	@Override
	public boolean checkUser(String username, String password) {
		Account result = accountRepository.findByUsernameAndPassword(username, password);
		if(result != null && result.getRole().equalsIgnoreCase("user")) return true;
		return false;
	}

	
}
