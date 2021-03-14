/**
 * 
 * @author ADMIN
 * @date Mar 11, 2021
 */

package com.kopiko.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kopiko.entity.OrderEntity;

@Repository
public interface IOrderRepository  extends JpaRepository<OrderEntity, Long>{

}
