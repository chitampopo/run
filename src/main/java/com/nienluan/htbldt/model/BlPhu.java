package com.nienluan.htbldt.model;
// default package
// Generated Sep 23, 2014 11:02:41 PM by Hibernate Tools 4.0.0

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 * BlPhu generated by hbm2java
 */
@Entity
@Table(name = "bl_phu", catalog = "nienluan")
public class BlPhu implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8183833502384300010L;
	private int maBl;
	private BinhLuan binhLuanByMaBl;
	private BinhLuan binhLuanByMaBlC;

	public BlPhu() {
	}

	public BlPhu(BinhLuan binhLuanByMaBl, BinhLuan binhLuanByMaBlC) {
		this.binhLuanByMaBl = binhLuanByMaBl;
		this.binhLuanByMaBlC = binhLuanByMaBlC;
	}

	@GenericGenerator(name = "generator", strategy = "foreign", parameters = @Parameter(name = "property", value = "binhLuanByMaBl"))
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "MA_BL", unique = true, nullable = false)
	public int getMaBl() {
		return this.maBl;
	}

	public void setMaBl(int maBl) {
		this.maBl = maBl;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn
	public BinhLuan getBinhLuanByMaBl() {
		return this.binhLuanByMaBl;
	}

	public void setBinhLuanByMaBl(BinhLuan binhLuanByMaBl) {
		this.binhLuanByMaBl = binhLuanByMaBl;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MA_BL_C", nullable = false)
	public BinhLuan getBinhLuanByMaBlC() {
		return this.binhLuanByMaBlC;
	}

	public void setBinhLuanByMaBlC(BinhLuan binhLuanByMaBlC) {
		this.binhLuanByMaBlC = binhLuanByMaBlC;
	}

}
