/*
 * 
 * 
 * 
 */
package com.cqshop.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * Entity - 商家
 * 
 * 
 * 
 */
@Entity
@Table(name = "t_seller")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_seller_sequence")
public class Seller extends BaseEntity {

	private static final long serialVersionUID = 15331306855625835L;

	/** 商家名称 */
	private String name;

	/** 法人代表 */
	private String legalRepresent;

	/** 身份证 */
	private String identityCard;

	/** 商家介绍 */
	private String description;

	/** 所在地址 */
	private String address;

	/** 保证金 */
	private String deposit;

	/** 联系方式 */
	private String contact;

	/** QQ */
	private String qq;

	/** 微信 */
	private String wechat;

	/** 微博 */
	private String weibo;

	/** 手持身份证图片 */
	private String idCardImage;

	/** 状态 */
	private Integer status;

	/** 信用额度(信誉) */
	private Integer credit;

	/** 商家等级 */
	private SellerRank sellerRank;

	/** 注册日期 */
	private Date registDate;

	/** 注册IP */
	private String registIp;

	/** 商家服务 */
	private SellerServe sellerServe;

	/** 地区 */
	private Area area;

	/** logo */
	private String logo;

	/** 是否启用 */
	private Boolean isEnabled;

	/** 是否锁定 */
	private Boolean isLocked;

	/** 锁定日期 */
	private Date lockedDate;

	/** 企业主页 */
	private String homepage;

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

	/** 会员 */
	private Set<Member> members = new HashSet<Member>();

	/** 角色 */
	private Set<Role> roles = new HashSet<Role>();

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the legalRepresent
	 */
	public String getLegalRepresent() {
		return legalRepresent;
	}

	/**
	 * @param legalRepresent
	 *            the legalRepresent to set
	 */
	public void setLegalRepresent(String legalRepresent) {
		this.legalRepresent = legalRepresent;
	}

	/**
	 * @return the identityCard
	 */
	public String getIdentityCard() {
		return identityCard;
	}

	/**
	 * @param identityCard
	 *            the identityCard to set
	 */
	public void setIdentityCard(String identityCard) {
		this.identityCard = identityCard;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address
	 *            the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the deposit
	 */
	public String getDeposit() {
		return deposit;
	}

	/**
	 * @param deposit
	 *            the deposit to set
	 */
	public void setDeposit(String deposit) {
		this.deposit = deposit;
	}

	/**
	 * @return the contact
	 */
	public String getContact() {
		return contact;
	}

	/**
	 * @param contact
	 *            the contact to set
	 */
	public void setContact(String contact) {
		this.contact = contact;
	}

	/**
	 * @return the qq
	 */
	public String getQq() {
		return qq;
	}

	/**
	 * @param qq
	 *            the qq to set
	 */
	public void setQq(String qq) {
		this.qq = qq;
	}

	/**
	 * @return the wechat
	 */
	public String getWechat() {
		return wechat;
	}

	/**
	 * @param wechat
	 *            the wechat to set
	 */
	public void setWechat(String wechat) {
		this.wechat = wechat;
	}

	/**
	 * @return the weibo
	 */
	public String getWeibo() {
		return weibo;
	}

	/**
	 * @param weibo
	 *            the weibo to set
	 */
	public void setWeibo(String weibo) {
		this.weibo = weibo;
	}

	/**
	 * @return the idCardImage
	 */
	public String getIdCardImage() {
		return idCardImage;
	}

	/**
	 * @param idCardImage
	 *            the idCardImage to set
	 */
	public void setIdCardImage(String idCardImage) {
		this.idCardImage = idCardImage;
	}

	/**
	 * @return the status
	 */
	public Integer getStatus() {
		return status;
	}

	/**
	 * @param status
	 *            the status to set
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

	/**
	 * @return the credit
	 */
	public Integer getCredit() {
		return credit;
	}

	/**
	 * @param credit
	 *            the credit to set
	 */
	public void setCredit(Integer credit) {
		this.credit = credit;
	}

	/**
	 * 获取商家等级
	 * 
	 * @return 商家等级
	 */
	@NotNull
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(nullable = false)
	public SellerRank getSellerRank() {
		return sellerRank;
	}

	/**
	 * 设置商家等级
	 * 
	 * @param memberRank
	 *            商家等级
	 */
	public void setSellerRank(SellerRank sellerRank) {
		this.sellerRank = sellerRank;
	}

	/**
	 * @return the registDate
	 */
	public Date getRegistDate() {
		return registDate;
	}

	/**
	 * @param registDate
	 *            the registDate to set
	 */
	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}

	/**
	 * @return the registIp
	 */
	public String getRegistIp() {
		return registIp;
	}

	/**
	 * @param registIp
	 *            the registIp to set
	 */
	public void setRegistIp(String registIp) {
		this.registIp = registIp;
	}

	/**
	 * @return the sellerServe
	 */
	public SellerServe getSellerServe() {
		return sellerServe;
	}

	/**
	 * @param sellerServe
	 *            the sellerServe to set
	 */
	public void setSellerServe(SellerServe sellerServe) {
		this.sellerServe = sellerServe;
	}

	/**
	 * @return the area
	 */
	@ManyToOne(fetch = FetchType.LAZY)
	public Area getArea() {
		return area;
	}

	/**
	 * @param area
	 *            the area to set
	 */
	public void setArea(Area area) {
		this.area = area;
	}

	/**
	 * @return the logo
	 */
	public String getLogo() {
		return logo;
	}

	/**
	 * @param logo
	 *            the logo to set
	 */
	public void setLogo(String logo) {
		this.logo = logo;
	}

	/**
	 * @return the isEnabled
	 */
	public Boolean getIsEnabled() {
		return isEnabled;
	}

	/**
	 * @param isEnabled
	 *            the isEnabled to set
	 */
	public void setIsEnabled(Boolean isEnabled) {
		this.isEnabled = isEnabled;
	}

	/**
	 * @return the isLocked
	 */
	public Boolean getIsLocked() {
		return isLocked;
	}

	/**
	 * @param isLocked
	 *            the isLocked to set
	 */
	public void setIsLocked(Boolean isLocked) {
		this.isLocked = isLocked;
	}

	/**
	 * @return the lockedDate
	 */
	public Date getLockedDate() {
		return lockedDate;
	}

	/**
	 * @param lockedDate
	 *            the lockedDate to set
	 */
	public void setLockedDate(Date lockedDate) {
		this.lockedDate = lockedDate;
	}

	/**
	 * @return the homepage
	 */
	public String getHomepage() {
		return homepage;
	}

	/**
	 * @param homepage
	 *            the homepage to set
	 */
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	@OneToMany(mappedBy = "seller", fetch = FetchType.LAZY)
	public Set<Member> getMembers() {
		return members;
	}

	public void setMembers(Set<Member> members) {
		this.members = members;
	}

	/**
	 * 获取角色
	 * 
	 * @return 角色
	 */
	@NotEmpty
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "t_seller_role")
	public Set<Role> getRoles() {
		return roles;
	}

	/**
	 * 设置角色
	 * 
	 * @param roles
	 *            角色
	 */
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	/**
	 * @return the company
	 */
	public String getCompany() {
		return company;
	}

	/**
	 * @param company the company to set
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
	 * @param licenseNumber the licenseNumber to set
	 */
	public void setLicenseNumber(String licenseNumber) {
		this.licenseNumber = licenseNumber;
	}

	/**
	 * @return the companyArea
	 */
	@ManyToOne(fetch = FetchType.LAZY)
	public Area getCompanyArea() {
		return companyArea;
	}

	/**
	 * @param companyArea the companyArea to set
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
	 * @param companyAddress the companyAddress to set
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
	 * @param establishDate the establishDate to set
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
	 * @param operatLimitFrom the operatLimitFrom to set
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
	 * @param operatLimitTo the operatLimitTo to set
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
	 * @param registCapital the registCapital to set
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
	 * @param scope the scope to set
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
	 * @param licenseImage the licenseImage to set
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
	 * @param emergencyContact the emergencyContact to set
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
	 * @param emergencyContactTel the emergencyContactTel to set
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
	 * @param orgCode the orgCode to set
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
	 * @param orgOperatLimitFrom the orgOperatLimitFrom to set
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
	 * @param orgOperatLimitTo the orgOperatLimitTo to set
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
	 * @param orgImage the orgImage to set
	 */
	public void setOrgImage(String orgImage) {
		this.orgImage = orgImage;
	}

}