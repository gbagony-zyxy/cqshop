/*
 * 
 * 
 * 
 */
package com.cqshop.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * Entity - 商家申请入驻填写的信息
 * 
 * 
 * 
 */
@Entity
@Table(name = "t_seller_app_info")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_seller_app_info_sequence")
public class SellerAppInfo extends BaseEntity {

	private static final long serialVersionUID = 153346455625835L;

	/** 商家ID */
	private Seller seller;

	/** 公司名称 */
	private String company;

	/** 营业执照注册号 */
	private String licenseNumber;

	/** 营业执照所在地 */
	private Area companyArea;

	/** 营业执照详细地址 */
	private String companyAddress;

	/** 成立日期 */
	private Date establishDate;

	/** 营业期限开始日 */
	private Date operatLimitFrom;

	/** 营业期限结束日 */
	private Date operatLimitTo;

	/** 注册资本 */
	private String registCapital;

	/** 经营范围 */
	private String scope;

	/** 营业执照副本电子版 */
	private String licenseImage;

	/** 公司紧急联系人 */
	private String emergencyContact;

	/** 公司紧急联系人手机 */
	private String emergencyContactTel;

	/** 组织机构代码 */
	private String orgCode;

	/** 组织机构代码证有效期 */
	private Date orgOperatLimitFrom;

	/** 组织机构代码证有效期 */
	private Date orgOperatLimitTo;

	/** 组织机构代码证电子版 */
	private String orgImage;

	/**
	 * @return the seller
	 */
	public Seller getSeller() {
		return seller;
	}

	/**
	 * @param seller
	 *            the seller to set
	 */
	public void setSeller(Seller seller) {
		this.seller = seller;
	}

	/**
	 * @return the company
	 */
	public String getCompany() {
		return company;
	}

	/**
	 * @param company
	 *            the company to set
	 */
	public void setCompany(String company) {
		this.company = company;
	}

	/**
	 * @return the licenseNumber
	 */
	public String getLicenseNumber() {
		return licenseNumber;
	}

	/**
	 * @param licenseNumber
	 *            the licenseNumber to set
	 */
	public void setLicenseNumber(String licenseNumber) {
		this.licenseNumber = licenseNumber;
	}

	/**
	 * @return the companyArea
	 */
	public Area getCompanyArea() {
		return companyArea;
	}

	/**
	 * @param companyArea
	 *            the companyArea to set
	 */
	public void setCompanyArea(Area companyArea) {
		this.companyArea = companyArea;
	}

	/**
	 * @return the companyAddress
	 */
	public String getCompanyAddress() {
		return companyAddress;
	}

	/**
	 * @param companyAddress
	 *            the companyAddress to set
	 */
	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	/**
	 * @return the establishDate
	 */
	public Date getEstablishDate() {
		return establishDate;
	}

	/**
	 * @param establishDate
	 *            the establishDate to set
	 */
	public void setEstablishDate(Date establishDate) {
		this.establishDate = establishDate;
	}

	/**
	 * @return the operatLimitFrom
	 */
	public Date getOperatLimitFrom() {
		return operatLimitFrom;
	}

	/**
	 * @param operatLimitFrom
	 *            the operatLimitFrom to set
	 */
	public void setOperatLimitFrom(Date operatLimitFrom) {
		this.operatLimitFrom = operatLimitFrom;
	}

	/**
	 * @return the operatLimitTo
	 */
	public Date getOperatLimitTo() {
		return operatLimitTo;
	}

	/**
	 * @param operatLimitTo
	 *            the operatLimitTo to set
	 */
	public void setOperatLimitTo(Date operatLimitTo) {
		this.operatLimitTo = operatLimitTo;
	}

	/**
	 * @return the registCapital
	 */
	public String getRegistCapital() {
		return registCapital;
	}

	/**
	 * @param registCapital
	 *            the registCapital to set
	 */
	public void setRegistCapital(String registCapital) {
		this.registCapital = registCapital;
	}

	/**
	 * @return the scope
	 */
	public String getScope() {
		return scope;
	}

	/**
	 * @param scope
	 *            the scope to set
	 */
	public void setScope(String scope) {
		this.scope = scope;
	}

	/**
	 * @return the licenseImage
	 */
	public String getLicenseImage() {
		return licenseImage;
	}

	/**
	 * @param licenseImage
	 *            the licenseImage to set
	 */
	public void setLicenseImage(String licenseImage) {
		this.licenseImage = licenseImage;
	}

	/**
	 * @return the emergencyContact
	 */
	public String getEmergencyContact() {
		return emergencyContact;
	}

	/**
	 * @param emergencyContact
	 *            the emergencyContact to set
	 */
	public void setEmergencyContact(String emergencyContact) {
		this.emergencyContact = emergencyContact;
	}

	/**
	 * @return the emergencyContactTel
	 */
	public String getEmergencyContactTel() {
		return emergencyContactTel;
	}

	/**
	 * @param emergencyContactTel
	 *            the emergencyContactTel to set
	 */
	public void setEmergencyContactTel(String emergencyContactTel) {
		this.emergencyContactTel = emergencyContactTel;
	}

	/**
	 * @return the orgCode
	 */
	public String getOrgCode() {
		return orgCode;
	}

	/**
	 * @param orgCode
	 *            the orgCode to set
	 */
	public void setOrgCode(String orgCode) {
		this.orgCode = orgCode;
	}

	/**
	 * @return the orgOperatLimitFrom
	 */
	public Date getOrgOperatLimitFrom() {
		return orgOperatLimitFrom;
	}

	/**
	 * @param orgOperatLimitFrom
	 *            the orgOperatLimitFrom to set
	 */
	public void setOrgOperatLimitFrom(Date orgOperatLimitFrom) {
		this.orgOperatLimitFrom = orgOperatLimitFrom;
	}

	/**
	 * @return the orgOperatLimitTo
	 */
	public Date getOrgOperatLimitTo() {
		return orgOperatLimitTo;
	}

	/**
	 * @param orgOperatLimitTo
	 *            the orgOperatLimitTo to set
	 */
	public void setOrgOperatLimitTo(Date orgOperatLimitTo) {
		this.orgOperatLimitTo = orgOperatLimitTo;
	}

	/**
	 * @return the orgImage
	 */
	public String getOrgImage() {
		return orgImage;
	}

	/**
	 * @param orgImage
	 *            the orgImage to set
	 */
	public void setOrgImage(String orgImage) {
		this.orgImage = orgImage;
	}

}