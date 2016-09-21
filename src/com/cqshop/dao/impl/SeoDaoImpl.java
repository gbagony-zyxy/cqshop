/*
 * 
 * 
 * 
 */
package com.cqshop.dao.impl;

import javax.persistence.FlushModeType;
import javax.persistence.NoResultException;

import org.springframework.stereotype.Repository;

import com.cqshop.dao.SeoDao;
import com.cqshop.entity.Seo;
import com.cqshop.entity.Seo.Type;

/**
 * Dao - SEO设置
 * 
 * 
 * 
 */
@Repository("seoDaoImpl")
public class SeoDaoImpl extends BaseDaoImpl<Seo, Long> implements SeoDao {

	public Seo find(Type type) {
		if (type == null) {
			return null;
		}
		try {
			String jpql = "select seo from Seo seo where seo.type = :type";
			return entityManager.createQuery(jpql, Seo.class).setFlushMode(FlushModeType.COMMIT).setParameter("type", type).getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

}