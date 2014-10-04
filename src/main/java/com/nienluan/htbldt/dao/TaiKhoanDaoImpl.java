package com.nienluan.htbldt.dao;

import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nienluan.htbldt.model.LoaiTk;
import com.nienluan.htbldt.model.TaiKhoan;

@Repository
public class TaiKhoanDaoImpl implements TaiKhoanDao {

	/**
	 * Biến sessionFactory dùng để quản lý phiên làm việc với model
	 */
	@Autowired
	private SessionFactory sessionFactory;

	/**
	 * Hàm getCurrentSession dùng để mở kết nối với model
	 * 
	 * @return đối tượng session
	 */
	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	/**
	 * Hàm này dùng để lấy thông tin của 1 tài khoản bằng mã tài khoản
	 */
	@Override
	public TaiKhoan getTaiKhoan(int ma_tai_khoan) {
		TaiKhoan taikhoan = (TaiKhoan) getCurrentSession().get(TaiKhoan.class,
				ma_tai_khoan);
		//int maLoaiTk = taikhoan.getLoaiTk().getMaLoaiTk();
		//LoaiTk loaiTk = (LoaiTk) getCurrentSession().get(LoaiTk.class, maLoaiTk);
		//taikhoan.setLoaiTk(loaiTk);
		return taikhoan;
	}

	/**
	 * Hàm này dùng để lấy danh sách tài khoản trong CSDL
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TaiKhoan> listTaiKhoan() {
		return getCurrentSession().createQuery("From TaiKhoan").list();
	}

	/**
	 * Hàm này dùng để xóa tài khoản bằng mã tài khoản
	 */
	@Override
	public void deleteTaiKhoan(int ma_tai_khoan) {
		TaiKhoan tai_khoan = getTaiKhoan(ma_tai_khoan);
		getCurrentSession().delete(tai_khoan);
	}

	/**
	 * Hàm này dùng để thêm tài khoản bằng đối tượng tài khoản
	 */
	@Override
	public void addTaiKhoan(TaiKhoan tai_khoan) {
		int ma = tai_khoan.getLoaiTk().getMaLoaiTk();
		// lấy loại tài khoản có cùng loại với tai_khoan
		LoaiTk loaitk = (LoaiTk) getCurrentSession().get(LoaiTk.class, ma);
		// lấy danh sách các tài khoản có cùng loại tài khoản với tai_khoan
		Set<TaiKhoan> taiKhoans = loaitk.getTaiKhoans();
		// thêm tai_khoan vào danh sách
		taiKhoans.add(tai_khoan);
		// lưu ngược lại vào loại tài khoản
		loaitk.setTaiKhoans(taiKhoans);
		//cap nhat lai bang loai tai khoan
		//luu tai_khoan
		getCurrentSession().update(loaitk);
		getCurrentSession().save(tai_khoan);
		//hien thi
		//loaitk.viewTaiKhoans();
	}

	/**
	 * Hàm này dùng để cập nhật tài khoản bằng đối tượng tài khoản
	 */
	@Override
	public void updateTaiKhoan(TaiKhoan tai_khoan) {
		TaiKhoan taikhoan = getTaiKhoan(tai_khoan.getMaTk());
		taikhoan.setDiaChi(tai_khoan.getDiaChi());
		taikhoan.setEmail(tai_khoan.getEmail());
		taikhoan.setGioiTinh(tai_khoan.getGioiTinh());
		taikhoan.setLoaiTk(tai_khoan.getLoaiTk());
		taikhoan.setMatKhau(tai_khoan.getMatKhau());
		taikhoan.setNamSinh(tai_khoan.getNamSinh());
		taikhoan.setSdt(tai_khoan.getSdt());
		taikhoan.setTenTk(tai_khoan.getTenTk());
		taikhoan.setTgTaoTk(tai_khoan.getTgTaoTk());
		getCurrentSession().update(taikhoan.getLoaiTk());
		getCurrentSession().update(taikhoan);
	}

}
