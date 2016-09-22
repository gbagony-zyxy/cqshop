/*
 * 
 * 
 * 
 */
package com.cqshop.dao;

import com.cqshop.entity.Deposit;
import com.cqshop.entity.Member;
import com.cqshop.framework.Page;
import com.cqshop.framework.Pageable;

/**
 * Dao - 预存款
 * 
 * 
 * 
 */
public interface DepositDao extends BaseDao<Deposit, Long> {

	/**
	 * 查找预存款分页
	 * 
	 * @param member
	 *            会员
	 * @param pageable
	 *            分页信息
	 * @return 预存款分页
	 */
	Page<Deposit> findPage(Member member, Pageable pageable);

}