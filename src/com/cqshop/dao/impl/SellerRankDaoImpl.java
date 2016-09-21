/*
 * 
 * 
 * 
 */
package com.cqshop.dao.impl;

import java.math.BigDecimal;

import javax.persistence.FlushModeType;
import javax.persistence.NoResultException;

import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

import com.cqshop.dao.SellerRankDao;
import com.cqshop.entity.SellerRank;

/**
 * Dao - 商家等级
 * 
 * 
 * 
 */
@Repository("sellerRankDaoImpl")
public class SellerRankDaoImpl extends BaseDaoImpl<SellerRank, Long> implements SellerRankDao {

	public boolean nameExists(String name) {
		if (name == null) {
			return false;
		}
		String jpql = "select count(*) from SellerRank sellerRank where lower(sellerRank.name) = lower(:name)";
		Long count = entityManager.createQuery(jpql, Long.class).setFlushMode(FlushModeType.COMMIT).setParameter("name", name).getSingleResult();
		return count > 0;
	}

	public boolean pointExists(BigDecimal point) {
		if (point == null) {
			return false;
		}
		String jpql = "select count(*) from SellerRank sellerRank where sellerRank.point = :point";
		Long count = entityManager.createQuery(jpql, Long.class).setFlushMode(FlushModeType.COMMIT).setParameter("point", point).getSingleResult();
		return count > 0;
	}

	public SellerRank findDefault() {
		try {
			String jpql = "select sellerRank from SellerRank sellerRank where sellerRank.isDefault = true";
			return entityManager.createQuery(jpql, SellerRank.class).setFlushMode(FlushModeType.COMMIT).getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

	public SellerRank findByPoint(BigDecimal point) {
		if (point == null) {
			return null;
		}
		String jpql = "select sellerRank from SellerRank sellerRank where sellerRank.isSpecial = false and sellerRank.amount <= :amount order by sellerRank.amount desc";
		return entityManager.createQuery(jpql, SellerRank.class).setFlushMode(FlushModeType.COMMIT).setParameter("point", point).setMaxResults(1).getSingleResult();
	}

	/**
	 * 处理默认并保存
	 * 
	 * @param SellerRank
	 *            商家等级
	 */
	@Override
	public void persist(SellerRank sellerRank) {
		Assert.notNull(sellerRank);
		if (sellerRank.getIsDefault()) {
			String jpql = "update SellerRank sellerRank set sellerRank.isDefault = false where sellerRank.isDefault = true";
			entityManager.createQuery(jpql).setFlushMode(FlushModeType.COMMIT).executeUpdate();
		}
		super.persist(sellerRank);
	}

	/**
	 * 处理默认并更新
	 * 
	 * @param SellerRank
	 *            商家等级
	 * @return 商家等级
	 */
	@Override
	public SellerRank merge(SellerRank sellerRank) {
		Assert.notNull(sellerRank);
		if (sellerRank.getIsDefault()) {
			String jpql = "update SellerRank sellerRank set sellerRank.isDefault = false where sellerRank.isDefault = true and sellerRank != :sellerRank";
			entityManager.createQuery(jpql).setFlushMode(FlushModeType.COMMIT).setParameter("sellerRank", sellerRank).executeUpdate();
		}
		return super.merge(sellerRank);
	}

	/**
	 * 忽略默认、清除商家价并删除
	 * 
	 * @param SellerRank
	 *            商家等级
	 */
	@Override
	public void remove(SellerRank sellerRank) {
		if (sellerRank != null && !sellerRank.getIsDefault()) {
	/*		String jpql = "select member from Member member join member.seller seller where index(seller) = :sellerRank";
			List<Member> members = entityManager.createQuery(jpql, Member.class).setFlushMode(FlushModeType.COMMIT).setParameter("sellerRank", sellerRank).getResultList();
			for (int i = 0; i < members.size(); i++) {
				Member member = members.get(i);
				member.getSeller().remove(sellerRank);
				if (i % 20 == 0) {
					super.flush();
					super.clear();
				}
			}*/
			super.remove(super.merge(sellerRank));
		}
	}

}