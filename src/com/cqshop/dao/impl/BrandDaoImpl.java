/*
 * 
 * 
 * 
 */
package com.cqshop.dao.impl;

import org.springframework.stereotype.Repository;

import com.cqshop.dao.BrandDao;
import com.cqshop.entity.Brand;

/**
 * Dao - 品牌
 * 
 * 
 * 
 */
@Repository("brandDaoImpl")
public class BrandDaoImpl extends BaseDaoImpl<Brand, Long> implements BrandDao {

}