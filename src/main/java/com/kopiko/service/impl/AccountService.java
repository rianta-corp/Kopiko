package com.kopiko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kopiko.entity.Account;
import com.kopiko.repository.IAccountRepository;
import com.kopiko.service.IAccountService;

public class AccountService implements IAccountService {

	@Autowired
	private IAccountRepository accountRepository;
	
	
	@Override
	public List<Account> findAll() {
		// TODO Auto-generated method stubaaaaa
		return null;
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
	public boolean delete(Long id) {
		// TODO Auto-generated method stub
		return false;
	}

	
}
