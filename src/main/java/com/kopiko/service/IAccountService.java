package com.kopiko.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kopiko.entity.Account;

@Service
public interface IAccountService {

List<Account>findAll();
Account findOne(Long accountId);
Account insert(Account account);
Account update(Account account);
List<Account> search(String A);
boolean delete(Account account);
void save(Account account);	
}


