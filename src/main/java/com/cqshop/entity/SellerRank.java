/*
 * 
 * 
 * 
 */
package com.cqshop.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Entity - 商家等级
 * 
 * 
 * 
 */
@Entity
@Table(name = "t_seller_rank")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_seller_rank_sequence")
public class SellerRank extends BaseEntity {

	private static final long serialVersionUID = 35990293123895209L;

	/** 名称 */
	private String name;

	/** 是否默认 */
	private Boolean isDefault;

	/** 是否特殊 */
	private Boolean isSpecial;

	/** 积分 */
	private Long point;

	/** 商家 */
	private Set<Seller> sellers = new HashSet<Seller>();

	/**
	 * 获取名称
	 * 
	 * @return 名称
	 */
	@NotEmpty
	@Length(max = 100)
	@Column(nullable = false, unique = true, length = 100)
	public String getName() {
		return name;
	}

	/**
	 * 设置名称
	 * 
	 * @param name
	 *            名称
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 获取是否默认
	 * 
	 * @return 是否默认
	 */
	@NotNull
	@Column(nullable = false)
	public Boolean getIsDefault() {
		return isDefault;
	}

	/**
	 * 设置是否默认
	 * 
	 * @param isDefault
	 *            是否默认
	 */
	public void setIsDefault(Boolean isDefault) {
		this.isDefault = isDefault;
	}

	/**
	 * 获取是否特殊
	 * 
	 * @return 是否特殊
	 */
	@NotNull
	@Column(nullable = false)
	public Boolean getIsSpecial() {
		return isSpecial;
	}

	/**
	 * 设置是否特殊
	 * 
	 * @param isSpecial
	 *            是否特殊
	 */
	public void setIsSpecial(Boolean isSpecial) {
		this.isSpecial = isSpecial;
	}

	/**
	 * 获取商家
	 * 
	 * @return 商家
	 */
	@OneToMany(mappedBy = "sellerRank", fetch = FetchType.LAZY)
	public Set<Seller> getSellers() {
		return sellers;
	}

	/**
	 * 设置商家
	 * 
	 * @param members
	 *            商家
	 */
	public void setSellers(Set<Seller> sellers) {
		this.sellers = sellers;
	}

	/**
	 * @return the point
	 */
	public Long getPoint() {
		return point;
	}

	/**
	 * @param point
	 *            the point to set
	 */
	public void setPoint(Long point) {
		this.point = point;
	}

}