package com.nienluan.htbldt.model;
// default package
// Generated Sep 23, 2014 11:02:41 PM by Hibernate Tools 4.0.0

import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * TaiKhoan generated by hbm2java
 */
@Entity
@Table(name = "tai_khoan", catalog = "nienluan")
public class TaiKhoan implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3219640277036691478L;
	private Integer maTk;
	private LoaiTk loaiTk;
	private String tenTk;
	private String matKhau;
	private Boolean gioiTinh;
	private String email;
	private String sdt;
	private String diaChi;
	private Integer namSinh;
	private Date tgTaoTk;
	private Set<BinhLuan> binhLuans = new HashSet<BinhLuan>(0);
	private Set<ThongBao> thongBaos = new HashSet<ThongBao>(0);
	private Set<DonDatHang> donDatHangs = new HashSet<DonDatHang>(0);

	public TaiKhoan() {
	}

	public TaiKhoan(LoaiTk loaiTk) {
		this.loaiTk = loaiTk;
	}

	public TaiKhoan(LoaiTk loaiTk, String tenTk, String matKhau,
			Boolean gioiTinh, String email, String sdt, String diaChi,
			Integer namSinh, Date tgTaoTk, Set<BinhLuan> binhLuans,
			Set<ThongBao> thongBaos, Set<DonDatHang> donDatHangs) {
		this.loaiTk = loaiTk;
		this.tenTk = tenTk;
		this.matKhau = matKhau;
		this.gioiTinh = gioiTinh;
		this.email = email;
		this.sdt = sdt;
		this.diaChi = diaChi;
		this.namSinh = namSinh;
		this.tgTaoTk = tgTaoTk;
		this.binhLuans = binhLuans;
		this.thongBaos = thongBaos;
		this.donDatHangs = donDatHangs;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "MA_TK", unique = true, nullable = false)
	public Integer getMaTk() {
		return this.maTk;
	}

	public void setMaTk(Integer maTk) {
		this.maTk = maTk;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MA_LOAI_TK", nullable = false)
	public LoaiTk getLoaiTk() {
		return this.loaiTk;
	}

	public void setLoaiTk(LoaiTk loaiTk) {
		this.loaiTk = loaiTk;
	}

	@Column(name = "TEN_TK", length = 100)
	public String getTenTk() {
		return this.tenTk;
	}

	public void setTenTk(String tenTk) {
		this.tenTk = tenTk;
	}

	@Column(name = "MAT_KHAU", length = 100)
	public String getMatKhau() {
		return this.matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	@Column(name = "GIOI_TINH")
	public Boolean getGioiTinh() {
		return this.gioiTinh;
	}

	public void setGioiTinh(Boolean gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	@Column(name = "EMAIL", length = 50)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "SDT", length = 20)
	public String getSdt() {
		return this.sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	@Column(name = "DIA_CHI", length = 200)
	public String getDiaChi() {
		return this.diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	@Column(name = "NAM_SINH")
	public Integer getNamSinh() {
		return this.namSinh;
	}

	public void setNamSinh(Integer namSinh) {
		this.namSinh = namSinh;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "TG_TAO_TK", length = 19)
	public Date getTgTaoTk() {
		return this.tgTaoTk;
	}

	public void setTgTaoTk(Date tgTaoTk) {
		this.tgTaoTk = tgTaoTk;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "taiKhoan")
	public Set<BinhLuan> getBinhLuans() {
		return this.binhLuans;
	}

	public void setBinhLuans(Set<BinhLuan> binhLuans) {
		this.binhLuans = binhLuans;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "taiKhoan")
	public Set<ThongBao> getThongBaos() {
		return this.thongBaos;
	}

	public void setThongBaos(Set<ThongBao> thongBaos) {
		this.thongBaos = thongBaos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "taiKhoan")
	public Set<DonDatHang> getDonDatHangs() {
		return this.donDatHangs;
	}

	public void setDonDatHangs(Set<DonDatHang> donDatHangs) {
		this.donDatHangs = donDatHangs;
	}

	@Override
	public String toString() {
		return "TaiKhoan [maTk=" + maTk + ", tenTk="
				+ tenTk + ", matKhau=" + matKhau + ", gioiTinh=" + gioiTinh
				+ ", email=" + email + ", sdt=" + sdt + ", diaChi=" + diaChi
				+ ", namSinh=" + namSinh + ", tgTaoTk=" + tgTaoTk + "]";
	}

}
