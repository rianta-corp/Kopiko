package com.kopiko.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.kopiko.entity.Account;

public interface IAccountRepository extends JpaRepository<Account , Long>{

//<<<<<<< HEAD
	Account findByAccountId(Long id);
	   List<Account> findByaccountId(String A);
//=======
	Account findByAccountId(long id);
//	   List<Employee> findByNameContaining(String A);

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
	@Query(value="select * from account as a where a.username=?1 and a.password=?2", nativeQuery=true)
	Account findByUsernameAndPassword(String username, String password);
//>>>>>>> f2c8361b5fae5ba51032de01c58b6cfbb5df14f1
}