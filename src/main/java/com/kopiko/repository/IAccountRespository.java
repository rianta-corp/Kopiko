package com.kopiko.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kopiko.entity.Account;
import com.kopiko.entity.ProductImage;

public interface IAccountRespository extends JpaRepository<Account , Long>{

	Account findByaccountID(Long id);

}