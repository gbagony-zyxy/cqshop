/*
 * 
 * 
 * 
 */
package com.cqshop.dao.impl;

import java.util.List;

import javax.persistence.FlushModeType;

import org.springframework.stereotype.Repository;

import com.cqshop.dao.MemberAttributeDao;
import com.cqshop.entity.Member;
import com.cqshop.entity.MemberAttribute;
import com.cqshop.entity.MemberAttribute.Type;

/**
 * Dao - 会员注册项
 * 
 * 
 * 
 */
@Repository("memberAttributeDaoImpl")
public class MemberAttributeDaoImpl extends BaseDaoImpl<MemberAttribute, Long> implements MemberAttributeDao {

	public Integer findUnusedPropertyIndex() {
		for (int i = 0; i < Member.ATTRIBUTE_VALUE_PROPERTY_COUNT; i++) {
			String jpql = "select count(*) from MemberAttribute memberAttribute where memberAttribute.propertyIndex = :propertyIndex";
			Long count = entityManager.createQuery(jpql, Long.class).setFlushMode(FlushModeType.COMMIT).setParameter("propertyIndex", i).getSingleResult();
			if (count == 0) {
				return i;
			}
		}
		return null;
	}

	public List<MemberAttribute> findList() {
		String jpql = "select memberAttribute from MemberAttribute memberAttribute where memberAttribute.isEnabled = true order by memberAttribute.order asc";
		return entityManager.createQuery(jpql, MemberAttribute.class).setFlushMode(FlushModeType.COMMIT).getResultList();
	}

	/**
	 * 清除会员注册项值
	 * 
	 * @param memberAttribute
	 *            会员注册项
	 */
	@Override
	public void remove(MemberAttribute memberAttribute) {
		if (memberAttribute != null && (memberAttribute.getType() == Type.text || memberAttribute.getType() == Type.select || memberAttribute.getType() == Type.checkbox)) {
			String propertyName = Member.ATTRIBUTE_VALUE_PROPERTY_NAME_PREFIX + memberAttribute.getPropertyIndex();
			String jpql = "update Member members set members." + propertyName + " = null";
			entityManager.createQuery(jpql).setFlushMode(FlushModeType.COMMIT).executeUpdate();
			super.remove(memberAttribute);
		}
	}

}