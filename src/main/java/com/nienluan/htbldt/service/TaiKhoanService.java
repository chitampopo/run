package com.nienluan.htbldt.service;

import java.util.List;

import com.nienluan.htbldt.model.TaiKhoan;

/**
 * Lớp này dùng để khai báo các dịch vụ liên quan đến model TaiKhoan
 * @author Nguyễn Chí Tâm
 * Date: 12/09/2014
 */
public interface TaiKhoanService {
	/**
	 * Khai báo dịch vụ để lấy thông tin tài khoản từ mã tài khoản
	 * @param ma_tai_khoan mã tài khoản
	 * @return đối tượng TaiKhoan
	 */
	public TaiKhoan getTaiKhoan(int ma_tai_khoan);

	/**
	 * Khai báo dịch vụ để 
	 * cập nhật thông tin tài khoản bằng đối tượng tài khoản
	 * @param tai_khoan đối tượng tài khoản dùng để cập nhật vào CSDL
	 */
	public void updateTaiKhoan(TaiKhoan tai_khoan);

	/**
	 * Khai báo dịch vụ để tạo ra 1 danh sách các tài khoản trong CSDL
	 * @return 1 đối tượng dạng List<TaiKhoan> 
	 * chứa các tài khoản trong hệ thống
	 */
	public List<TaiKhoan> listTaiKhoan();

	/**
	 * Khai báo hàm xóa tài khoản bằng mã tài khoản
	 * @param ma_tai_khoan mã tài khoản
	 */
	public void deleteTaiKhoan(int ma_tai_khoan);

	/**
	 * Khai báo hàm thêm tài khoản bằng đối tượng tài khoản
	 * @param tai_khoan đối tượng tài khoản
	 */
	public void addTaiKhoan(TaiKhoan tai_khoan);
	
}
