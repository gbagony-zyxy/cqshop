/*
 * 
 * 
 * 
 */
package com.cqshop.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cqshop.dao.SpecificationDao;
import com.cqshop.entity.Specification;
import com.cqshop.service.SpecificationService;

/**
 * Service - 规格
 * 
 * 
 * 
 */
@Service("specificationServiceImpl")
public class SpecificationServiceImpl extends BaseServiceImpl<Specification, Long> implements SpecificationService {

	@Resource(name = "specificationDaoImpl")
	public void setBaseDao(SpecificationDao specificationDao) {
		super.setBaseDao(specificationDao);
	}

}