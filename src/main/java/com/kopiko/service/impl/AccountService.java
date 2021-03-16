package com.kopiko.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopiko.entity.Account;
import com.kopiko.repository.IAccountRepository;
import com.kopiko.service.IAccountService;

@Service
public class AccountService implements IAccountService {

	@Autowired
	private IAccountRepository accountRepository;
	
//	
//	@Override
//	public List<Account> findAll() {
//<<<<<<< HEAD
//		// TODO Auto-generated method stubaaaaa
//		return null;
//=======
//		// TODO Auto-generated method stub
//		return accountRepository.findAll();
//>>>>>>> 153628fe98682356fe1f6b98dc3fdb2e039152df
//	}

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
	public List<Account> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	
}
