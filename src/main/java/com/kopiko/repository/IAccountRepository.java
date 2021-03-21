package com.kopiko.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.kopiko.entity.Account;

public interface IAccountRepository extends JpaRepository<Account , Long>{

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
}