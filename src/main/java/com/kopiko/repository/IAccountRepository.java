package com.kopiko.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kopiko.entity.Account;

public interface IAccountRepository extends JpaRepository<Account , Long>{

	Account findByAccountId(Long id);
	   List<Account> findByaccountId(String A);
}