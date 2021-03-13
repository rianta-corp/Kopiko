package com.kopiko.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.kopiko.entity.Account;

public interface IAccountRepository extends JpaRepository<Account , Long>{

	Account findByAccountId(long id);

}