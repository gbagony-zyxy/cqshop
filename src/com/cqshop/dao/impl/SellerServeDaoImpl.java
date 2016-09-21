/*
 * 
 * 
 * 
 */
package com.cqshop.dao.impl;

import javax.persistence.FlushModeType;

import org.springframework.stereotype.Repository;

import com.cqshop.dao.SellerServeDao;
import com.cqshop.entity.SellerServe;

/**
 * Dao - 商家服务
 * 
 * 
 * 
 */
@Repository("sellerServeDaoImpl")
public class SellerServeDaoImpl extends BaseDaoImpl<SellerServe, Long> implements SellerServeDao {

	public boolean nameExists(String name) {
		if (name == null) {
			return false;
		}
		String jpql = "select count(*) from SellerServe sellerServe where lower(sellerServe.name) = lower(:name)";
		Long count = entityManager.createQuery(jpql, Long.class).setFlushMode(FlushModeType.COMMIT).setParameter("name", name).getSingleResult();
		return count > 0;
	}
}