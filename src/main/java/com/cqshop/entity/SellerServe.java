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

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Entity - 商家等级
 * 
 * 
 * 
 */
@Entity
@Table(name = "t_seller_serve")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_seller_serve_sequence")
public class SellerServe extends BaseEntity {

	private static final long serialVersionUID = 12489293123895209L;

	/** 名称 */
	private String name;

	/** 图标 */
	private String image;

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
	 * @return the image
	 */
	public String getImage() {
		return image;
	}

	/**
	 * @param image
	 *            the image to set
	 */
	public void setImage(String image) {
		this.image = image;
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

}