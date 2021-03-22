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
		return accountRepository.findAll();
	}

	@Override
	public Account insert(Account account) {
		return accountRepository.saveAndFlush(account);
	}

	@Override
	public Account update(Account account) {
		Account oldAccount = accountRepository.getOne(account.getAccountId());
		if(account.getEmail() != null) oldAccount.setEmail(account.getEmail());
		if(account.getUsername() != null) oldAccount .setUsername(account.getUsername());
		return accountRepository.saveAndFlush(oldAccount);
	}
	
	@Override
	public boolean deleteById(Long id) {
		accountRepository.deleteById(id);
		return true;
	}

//	@Override
//	@Override
//	public Account findByAccountId(Long id) {
//		// TODO Auto-generated method stub
//		return accountRepository.getOne(id);
//	}
//<<<<<<< HEAD
//=======

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

	@Override
	public Account findOne(Long accountId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Account> search(String A) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Account account) {
		// TODO Auto-generated method stub
		
	}

//>>>>>>> f2c8361b5fae5ba51032de01c58b6cfbb5df14f1
	
	
}