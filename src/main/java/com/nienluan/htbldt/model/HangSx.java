package com.nienluan.htbldt.model;
// default package
// Generated Sep 23, 2014 11:02:41 PM by Hibernate Tools 4.0.0

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * HangSx generated by hbm2java
 */
@Entity
@Table(name = "hang_sx", catalog = "nienluan")
public class HangSx implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -331145608114977327L;
	private Integer maHangSx;
	private String tenHangSx;
	private String ghiChuHsx;
	private Set<PhanHeDt> phanHeDts = new HashSet<PhanHeDt>(0);

	public HangSx() {
	}

	public HangSx(String tenHangSx, String ghiChuHsx, Set<PhanHeDt> phanHeDts) {
		this.tenHangSx = tenHangSx;
		this.ghiChuHsx = ghiChuHsx;
		this.phanHeDts = phanHeDts;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "MA_HANG_SX", unique = true, nullable = false)
	public Integer getMaHangSx() {
		return this.maHangSx;
	}

	public void setMaHangSx(Integer maHangSx) {
		this.maHangSx = maHangSx;
	}

	@Column(name = "TEN_HANG_SX", length = 200)
	public String getTenHangSx() {
		return this.tenHangSx;
	}

	public void setTenHangSx(String tenHangSx) {
		this.tenHangSx = tenHangSx;
	}

	@Column(name = "GHI_CHU_HSX", length = 200)
	public String getGhiChuHsx() {
		return this.ghiChuHsx;
	}

	public void setGhiChuHsx(String ghiChuHsx) {
		this.ghiChuHsx = ghiChuHsx;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "hangSx")
	public Set<PhanHeDt> getPhanHeDts() {
		return this.phanHeDts;
	}

	public void setPhanHeDts(Set<PhanHeDt> phanHeDts) {
		this.phanHeDts = phanHeDts;
	}

}
