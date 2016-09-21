package com.cqshop.dao.impl;

import javax.persistence.FlushModeType;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import com.cqshop.dao.SellerDao;
import com.cqshop.entity.Seller;
import com.cqshop.framework.Page;
import com.cqshop.framework.Pageable;

/**
 * 商家
 * 
 * @author xierh
 *
 */
@Repository("sellerDaoImpl")
public class SellerDaoImpl extends BaseDaoImpl<Seller, Long> implements
		SellerDao {

	/**
	 * 判断店铺名是否存在
	 * 
	 * @param sellername
	 *            用户名(忽略大小写和所有空格)
	 * @return 店铺名是否存在
	 */
	public boolean sellernameExists(String sellername) {
		if (sellername == null) {
			return false;
		}
		String jpql = "select count(*) from Seller sellers where lower(sellers.name) = lower(:name)";
		Long count = entityManager.createQuery(jpql, Long.class)
				.setFlushMode(FlushModeType.COMMIT)
				.setParameter("name", sellername).getSingleResult();
		return count > 0;
	}

	/**
	 * 查找待审核的商家
	 * 
	 * @param seller
	 *            检索条件
	 * @param pageable
	 *            分页信息
	 * @return 商家分页
	 */
	public Page<Seller> findPage(Seller seller, Pageable pageable) {
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<Seller> criteriaQuery = criteriaBuilder.createQuery(Seller.class);
		Root<Seller> root = criteriaQuery.from(Seller.class);
		criteriaQuery.select(root);
		Predicate restrictions = criteriaBuilder.conjunction();
		if (seller.getStatus() != null) {
			restrictions = criteriaBuilder.and(restrictions, criteriaBuilder.equal(root.get("status"), seller.getStatus()));
		}

		criteriaQuery.where(restrictions);
		return super.findPage(criteriaQuery, pageable);
	}
}
