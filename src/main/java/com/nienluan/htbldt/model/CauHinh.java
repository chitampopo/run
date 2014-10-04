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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * CauHinh generated by hbm2java
 */
@Entity
@Table(name = "cau_hinh", catalog = "nienluan")
public class CauHinh implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1506350745552669973L;
	private Integer maCh;
	private String heDieuHanh;
	private String ngonNgu;
	private String loaiManHinh;
	private String mauManHinh;
	private String doPhanGiai;
	private Float ktManHinh;
	private String camUng;
	private Float cameraSau;
	private Float cameraTruoc;
	private String quayPhim;
	private String tocDoCpu;
	private String chipset;
	private String ram;
	private String rom;
	private String theNhoNgoai;
	private String kieuDang;
	private String kichThuoc;
	private Float trongLuong;
	private String loaiPin;
	private String knNgoai;
	private String knKhac;
	private String loaiSim;
	private String xemPhim;
	private String ngheNhac;
	private String chucNangKhac;
	private Date tgTaoCh;
	private Set<DienThoai> dienThoais = new HashSet<DienThoai>(0);

	public CauHinh() {
	}

	public CauHinh(String heDieuHanh, String ngonNgu, String loaiManHinh,
			String mauManHinh, String doPhanGiai, Float ktManHinh,
			String camUng, Float cameraSau, Float cameraTruoc, String quayPhim,
			String tocDoCpu, String chipset, String ram, String rom,
			String theNhoNgoai, String kieuDang, String kichThuoc,
			Float trongLuong, String loaiPin, String knNgoai, String knKhac,
			String loaiSim, String xemPhim, String ngheNhac,
			String chucNangKhac, Date tgTaoCh, Set<DienThoai> dienThoais) {
		this.heDieuHanh = heDieuHanh;
		this.ngonNgu = ngonNgu;
		this.loaiManHinh = loaiManHinh;
		this.mauManHinh = mauManHinh;
		this.doPhanGiai = doPhanGiai;
		this.ktManHinh = ktManHinh;
		this.camUng = camUng;
		this.cameraSau = cameraSau;
		this.cameraTruoc = cameraTruoc;
		this.quayPhim = quayPhim;
		this.tocDoCpu = tocDoCpu;
		this.chipset = chipset;
		this.ram = ram;
		this.rom = rom;
		this.theNhoNgoai = theNhoNgoai;
		this.kieuDang = kieuDang;
		this.kichThuoc = kichThuoc;
		this.trongLuong = trongLuong;
		this.loaiPin = loaiPin;
		this.knNgoai = knNgoai;
		this.knKhac = knKhac;
		this.loaiSim = loaiSim;
		this.xemPhim = xemPhim;
		this.ngheNhac = ngheNhac;
		this.chucNangKhac = chucNangKhac;
		this.tgTaoCh = tgTaoCh;
		this.dienThoais = dienThoais;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "MA_CH", unique = true, nullable = false)
	public Integer getMaCh() {
		return this.maCh;
	}

	public void setMaCh(Integer maCh) {
		this.maCh = maCh;
	}

	@Column(name = "HE_DIEU_HANH", length = 50)
	public String getHeDieuHanh() {
		return this.heDieuHanh;
	}

	public void setHeDieuHanh(String heDieuHanh) {
		this.heDieuHanh = heDieuHanh;
	}

	@Column(name = "NGON_NGU", length = 50)
	public String getNgonNgu() {
		return this.ngonNgu;
	}

	public void setNgonNgu(String ngonNgu) {
		this.ngonNgu = ngonNgu;
	}

	@Column(name = "LOAI_MAN_HINH", length = 50)
	public String getLoaiManHinh() {
		return this.loaiManHinh;
	}

	public void setLoaiManHinh(String loaiManHinh) {
		this.loaiManHinh = loaiManHinh;
	}

	@Column(name = "MAU_MAN_HINH", length = 50)
	public String getMauManHinh() {
		return this.mauManHinh;
	}

	public void setMauManHinh(String mauManHinh) {
		this.mauManHinh = mauManHinh;
	}

	@Column(name = "DO_PHAN_GIAI", length = 50)
	public String getDoPhanGiai() {
		return this.doPhanGiai;
	}

	public void setDoPhanGiai(String doPhanGiai) {
		this.doPhanGiai = doPhanGiai;
	}

	@Column(name = "KT_MAN_HINH", precision = 12, scale = 0)
	public Float getKtManHinh() {
		return this.ktManHinh;
	}

	public void setKtManHinh(Float ktManHinh) {
		this.ktManHinh = ktManHinh;
	}

	@Column(name = "CAM_UNG", length = 50)
	public String getCamUng() {
		return this.camUng;
	}

	public void setCamUng(String camUng) {
		this.camUng = camUng;
	}

	@Column(name = "CAMERA_SAU", precision = 12, scale = 0)
	public Float getCameraSau() {
		return this.cameraSau;
	}

	public void setCameraSau(Float cameraSau) {
		this.cameraSau = cameraSau;
	}

	@Column(name = "CAMERA_TRUOC", precision = 12, scale = 0)
	public Float getCameraTruoc() {
		return this.cameraTruoc;
	}

	public void setCameraTruoc(Float cameraTruoc) {
		this.cameraTruoc = cameraTruoc;
	}

	@Column(name = "QUAY_PHIM", length = 50)
	public String getQuayPhim() {
		return this.quayPhim;
	}

	public void setQuayPhim(String quayPhim) {
		this.quayPhim = quayPhim;
	}

	@Column(name = "TOC_DO_CPU", length = 50)
	public String getTocDoCpu() {
		return this.tocDoCpu;
	}

	public void setTocDoCpu(String tocDoCpu) {
		this.tocDoCpu = tocDoCpu;
	}

	@Column(name = "CHIPSET", length = 50)
	public String getChipset() {
		return this.chipset;
	}

	public void setChipset(String chipset) {
		this.chipset = chipset;
	}

	@Column(name = "RAM", length = 50)
	public String getRam() {
		return this.ram;
	}

	public void setRam(String ram) {
		this.ram = ram;
	}

	@Column(name = "ROM", length = 50)
	public String getRom() {
		return this.rom;
	}

	public void setRom(String rom) {
		this.rom = rom;
	}

	@Column(name = "THE_NHO_NGOAI", length = 50)
	public String getTheNhoNgoai() {
		return this.theNhoNgoai;
	}

	public void setTheNhoNgoai(String theNhoNgoai) {
		this.theNhoNgoai = theNhoNgoai;
	}

	@Column(name = "KIEU_DANG", length = 100)
	public String getKieuDang() {
		return this.kieuDang;
	}

	public void setKieuDang(String kieuDang) {
		this.kieuDang = kieuDang;
	}

	@Column(name = "KICH_THUOC", length = 50)
	public String getKichThuoc() {
		return this.kichThuoc;
	}

	public void setKichThuoc(String kichThuoc) {
		this.kichThuoc = kichThuoc;
	}

	@Column(name = "TRONG_LUONG", precision = 12, scale = 0)
	public Float getTrongLuong() {
		return this.trongLuong;
	}

	public void setTrongLuong(Float trongLuong) {
		this.trongLuong = trongLuong;
	}

	@Column(name = "LOAI_PIN", length = 50)
	public String getLoaiPin() {
		return this.loaiPin;
	}

	public void setLoaiPin(String loaiPin) {
		this.loaiPin = loaiPin;
	}

	@Column(name = "KN_NGOAI", length = 100)
	public String getKnNgoai() {
		return this.knNgoai;
	}

	public void setKnNgoai(String knNgoai) {
		this.knNgoai = knNgoai;
	}

	@Column(name = "KN_KHAC", length = 100)
	public String getKnKhac() {
		return this.knKhac;
	}

	public void setKnKhac(String knKhac) {
		this.knKhac = knKhac;
	}

	@Column(name = "LOAI_SIM", length = 50)
	public String getLoaiSim() {
		return this.loaiSim;
	}

	public void setLoaiSim(String loaiSim) {
		this.loaiSim = loaiSim;
	}

	@Column(name = "XEM_PHIM", length = 100)
	public String getXemPhim() {
		return this.xemPhim;
	}

	public void setXemPhim(String xemPhim) {
		this.xemPhim = xemPhim;
	}

	@Column(name = "NGHE_NHAC", length = 100)
	public String getNgheNhac() {
		return this.ngheNhac;
	}

	public void setNgheNhac(String ngheNhac) {
		this.ngheNhac = ngheNhac;
	}

	@Column(name = "CHUC_NANG_KHAC", length = 100)
	public String getChucNangKhac() {
		return this.chucNangKhac;
	}

	public void setChucNangKhac(String chucNangKhac) {
		this.chucNangKhac = chucNangKhac;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "TG_TAO_CH", length = 19)
	public Date getTgTaoCh() {
		return this.tgTaoCh;
	}

	public void setTgTaoCh(Date tgTaoCh) {
		this.tgTaoCh = tgTaoCh;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cauHinh")
	public Set<DienThoai> getDienThoais() {
		return this.dienThoais;
	}

	public void setDienThoais(Set<DienThoai> dienThoais) {
		this.dienThoais = dienThoais;
	}

	@Override
	public String toString() {
		return "CauHinh [maCh=" + maCh + ", heDieuHanh=" + heDieuHanh
				+ ", ngonNgu=" + ngonNgu + ", loaiManHinh=" + loaiManHinh
				+ ", mauManHinh=" + mauManHinh + ", doPhanGiai=" + doPhanGiai
				+ ", ktManHinh=" + ktManHinh + ", camUng=" + camUng
				+ ", cameraSau=" + cameraSau + ", cameraTruoc=" + cameraTruoc
				+ ", quayPhim=" + quayPhim + ", tocDoCpu=" + tocDoCpu
				+ ", chipset=" + chipset + ", ram=" + ram + ", rom=" + rom
				+ ", theNhoNgoai=" + theNhoNgoai + ", kieuDang=" + kieuDang
				+ ", kichThuoc=" + kichThuoc + ", trongLuong=" + trongLuong
				+ ", loaiPin=" + loaiPin + ", knNgoai=" + knNgoai + ", knKhac="
				+ knKhac + ", loaiSim=" + loaiSim + ", xemPhim=" + xemPhim
				+ ", ngheNhac=" + ngheNhac + ", chucNangKhac=" + chucNangKhac
				+ ", tgTaoCh=" + tgTaoCh  + "]";
	}

}