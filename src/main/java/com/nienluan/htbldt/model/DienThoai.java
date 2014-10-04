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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * DienThoai generated by hbm2java
 */
@Entity
@Table(name = "dien_thoai", catalog = "nienluan")
public class DienThoai implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1538128444560132568L;
	private Integer maDt;
	private CauHinh cauHinh;
	private PhanHeDt phanHeDt;
	private String tenDt;
	private String ghiChuDt;
	private String phuKien;
	private Integer slConLai;
	private Integer tgBaoHanh;
	private Set<BinhLuanDt> binhLuanDts = new HashSet<BinhLuanDt>(0);
	private Set<BaiDanhGia> baiDanhGias = new HashSet<BaiDanhGia>(0);
	private Set<DonGia> donGias = new HashSet<DonGia>(0);
	private Set<AnhDt> anhDts = new HashSet<AnhDt>(0);

	public DienThoai() {
	}

	public DienThoai(CauHinh cauHinh, PhanHeDt phanHeDt) {
		this.cauHinh = cauHinh;
		this.phanHeDt = phanHeDt;
	}

	public DienThoai(CauHinh cauHinh, PhanHeDt phanHeDt, String tenDt,
			String ghiChuDt, String phuKien, Integer slConLai,
			Integer tgBaoHanh, Set<BinhLuanDt> binhLuanDts,
			Set<BaiDanhGia> baiDanhGias, Set<DonGia> donGias, Set<AnhDt> anhDts) {
		this.cauHinh = cauHinh;
		this.phanHeDt = phanHeDt;
		this.tenDt = tenDt;
		this.ghiChuDt = ghiChuDt;
		this.phuKien = phuKien;
		this.slConLai = slConLai;
		this.tgBaoHanh = tgBaoHanh;
		this.binhLuanDts = binhLuanDts;
		this.baiDanhGias = baiDanhGias;
		this.donGias = donGias;
		this.anhDts = anhDts;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "MA_DT", unique = true, nullable = false)
	public Integer getMaDt() {
		return this.maDt;
	}

	public void setMaDt(Integer maDt) {
		this.maDt = maDt;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MA_CH", nullable = false)
	public CauHinh getCauHinh() {
		return this.cauHinh;
	}

	public void setCauHinh(CauHinh cauHinh) {
		this.cauHinh = cauHinh;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MA_PHAN_HE", nullable = false)
	public PhanHeDt getPhanHeDt() {
		return this.phanHeDt;
	}

	public void setPhanHeDt(PhanHeDt phanHeDt) {
		this.phanHeDt = phanHeDt;
	}

	@Column(name = "TEN_DT", length = 50)
	public String getTenDt() {
		return this.tenDt;
	}

	public void setTenDt(String tenDt) {
		this.tenDt = tenDt;
	}

	@Column(name = "GHI_CHU_DT", length = 200)
	public String getGhiChuDt() {
		return this.ghiChuDt;
	}

	public void setGhiChuDt(String ghiChuDt) {
		this.ghiChuDt = ghiChuDt;
	}

	@Column(name = "PHU_KIEN", length = 100)
	public String getPhuKien() {
		return this.phuKien;
	}

	public void setPhuKien(String phuKien) {
		this.phuKien = phuKien;
	}

	@Column(name = "SL_CON_LAI")
	public Integer getSlConLai() {
		return this.slConLai;
	}

	public void setSlConLai(Integer slConLai) {
		this.slConLai = slConLai;
	}

	@Column(name = "TG_BAO_HANH")
	public Integer getTgBaoHanh() {
		return this.tgBaoHanh;
	}

	public void setTgBaoHanh(Integer tgBaoHanh) {
		this.tgBaoHanh = tgBaoHanh;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "dienThoai")
	public Set<BinhLuanDt> getBinhLuanDts() {
		return this.binhLuanDts;
	}

	public void setBinhLuanDts(Set<BinhLuanDt> binhLuanDts) {
		this.binhLuanDts = binhLuanDts;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "dienThoai")
	public Set<BaiDanhGia> getBaiDanhGias() {
		return this.baiDanhGias;
	}

	public void setBaiDanhGias(Set<BaiDanhGia> baiDanhGias) {
		this.baiDanhGias = baiDanhGias;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "dienThoai")
	public Set<DonGia> getDonGias() {
		return this.donGias;
	}

	public void setDonGias(Set<DonGia> donGias) {
		this.donGias = donGias;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "dienThoai")
	public Set<AnhDt> getAnhDts() {
		return this.anhDts;
	}

	public void setAnhDts(Set<AnhDt> anhDts) {
		this.anhDts = anhDts;
	}

	@Override
	public String toString() {
		return "DienThoai [maDt=" + maDt + ", tenDt=" + tenDt + ", ghiChuDt="
				+ ghiChuDt + ", phuKien=" + phuKien + ", slConLai=" + slConLai
				+ ", tgBaoHanh=" + tgBaoHanh + ", maCauHinh= " + cauHinh.getMaCh() + " maPhanHe=" + phanHeDt.getMaPhanHe() + " ]";
	}

}
