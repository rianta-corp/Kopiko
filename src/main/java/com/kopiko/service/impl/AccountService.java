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
	private IAccountRepository accountRespository;

	@Override
	public List<Account> findAll() {
		return accountRespository.findAll();
	}

	@Override
	public Account insert(Account account) {
		return accountRespository.saveAndFlush(account);
	}

	@Override
	public Account update(Account account) {
		Account oldAccount = accountRespository.getOne(account.getAccountId());
		if(account.getEmail() != null) oldAccount.setEmail(account.getEmail());
		if(account.getUsername() != null) oldAccount .setUsername(account.getUsername());
		return accountRespository.saveAndFlush(oldAccount);
	}
	@Override
	public boolean delete(Long id) {
		accountRespository.deleteById(id);
		return true;
	}

	@Override
	public Account findByAccountId(Long id) {
		// TODO Auto-generated method stub
		return accountRespository.getOne(id);
	}
<<<<<<< HEAD
=======

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

>>>>>>> f2c8361b5fae5ba51032de01c58b6cfbb5df14f1
	
	
}