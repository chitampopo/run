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
 * AnhDt generated by hbm2java
 */
@Entity
@Table(name = "anh_dt", catalog = "nienluan")
public class AnhDt implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -9110758706221839817L;
	private int maAnh;
	private DienThoai dienThoai;
	private HinhAnh hinhAnh;

	public AnhDt() {
	}

	public AnhDt(DienThoai dienThoai, HinhAnh hinhAnh) {
		this.dienThoai = dienThoai;
		this.hinhAnh = hinhAnh;
	}

	@GenericGenerator(name = "generator", strategy = "foreign", parameters = @Parameter(name = "property", value = "hinhAnh"))
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "MA_ANH", unique = true, nullable = false)
	public int getMaAnh() {
		return this.maAnh;
	}

	public void setMaAnh(int maAnh) {
		this.maAnh = maAnh;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MA_DT", nullable = false)
	public DienThoai getDienThoai() {
		return this.dienThoai;
	}

	public void setDienThoai(DienThoai dienThoai) {
		this.dienThoai = dienThoai;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn
	public HinhAnh getHinhAnh() {
		return this.hinhAnh;
	}

	public void setHinhAnh(HinhAnh hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	@Override
	public String toString() {
		return "AnhDt [maAnh=" + maAnh + ", dienThoai=" + dienThoai.getMaDt()
				+ ", hinhAnh=" + hinhAnh.getMaAnh() + "]";
	}

}
