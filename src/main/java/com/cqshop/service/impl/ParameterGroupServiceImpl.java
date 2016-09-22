/*
 * 
 * 
 * 
 */
package com.cqshop.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cqshop.dao.ParameterGroupDao;
import com.cqshop.entity.ParameterGroup;
import com.cqshop.service.ParameterGroupService;

/**
 * Service - 参数组
 * 
 * 
 * 
 */
@Service("parameterGroupServiceImpl")
public class ParameterGroupServiceImpl extends BaseServiceImpl<ParameterGroup, Long> implements ParameterGroupService {

	@Resource(name = "parameterGroupDaoImpl")
	public void setBaseDao(ParameterGroupDao parameterGroupDao) {
		super.setBaseDao(parameterGroupDao);
	}

}