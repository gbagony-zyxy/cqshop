/*
 * 
 * 
 * 
 */
package com.cqshop.service.impl;

import java.math.BigDecimal;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cqshop.dao.SellerRankDao;
import com.cqshop.entity.SellerRank;
import com.cqshop.service.SellerRankService;

/**
 * Service - 会员等级
 * 
 * 
 * 
 */
@Service("sellerRankServiceImpl")
public class SellerRankServiceImpl extends BaseServiceImpl<SellerRank, Long> implements SellerRankService {

	@Resource(name = "sellerRankDaoImpl")
	private SellerRankDao sellerRankDao;

	@Resource(name = "sellerRankDaoImpl")
	public void setBaseDao(SellerRankDao sellerRankDao) {
		super.setBaseDao(sellerRankDao);
	}

	@Transactional(readOnly = true)
	public boolean nameExists(String name) {
		return sellerRankDao.nameExists(name);
	}

	@Transactional(readOnly = true)
	public boolean nameUnique(String previousName, String currentName) {
		if (StringUtils.equalsIgnoreCase(previousName, currentName)) {
			return true;
		} else {
			if (sellerRankDao.nameExists(currentName)) {
				return false;
			} else {
				return true;
			}
		}
	}

	@Transactional(readOnly = true)
	public boolean pointExists(BigDecimal point) {
		return sellerRankDao.pointExists(point);
	}

	@Transactional(readOnly = true)
	public boolean pointUnique(BigDecimal previousPoint, BigDecimal currentPoint) {
		if (previousPoint != null && previousPoint.compareTo(currentPoint) == 0) {
			return true;
		} else {
			if (sellerRankDao.pointExists(currentPoint)) {
				return false;
			} else {
				return true;
			}
		}
	}

	@Transactional(readOnly = true)
	public SellerRank findDefault() {
		return sellerRankDao.findDefault();
	}

	@Transactional(readOnly = true)
	public SellerRank findByPoint(BigDecimal point) {
		return sellerRankDao.findByPoint(point);
	}

}