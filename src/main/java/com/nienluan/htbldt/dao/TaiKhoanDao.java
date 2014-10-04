package com.nienluan.htbldt.dao;

import java.util.List;

import com.nienluan.htbldt.model.TaiKhoan;

/**
 * Interface này khai báo các hàm sẽ được sử dụng với model TaiKhoan
 * @author Nguyễn Chí Tâm
 * Date: 12/09/2014
 */
public interface TaiKhoanDao {
	
	/**
	 * Khai báo hàm để lấy thông tin của 1 tài khoản thông qua mã tài khoản
	 * @param ma_tai_khoan mã tài khoản
	 * @return 1 đối tượng TaiKhoan
	 */
	public TaiKhoan getTaiKhoan(int ma_tai_khoan);

	/**
	 * Khai báo hàm lấy danh sách tài khoản
	 * @return 1 danh sách đối tượng tài khoản
	 */
	public List<TaiKhoan> listTaiKhoan();

	/**
	 * Khai báo hàm xóa tài khoản dựa vào mã tài khoản
	 * @param ma_tai_khoan
	 */
	public void deleteTaiKhoan(int ma_tai_khoan);

	/**
	 * Khai báo hàm thêm tài khoản vào CSDL
	 * @param tai_khoan đối tượng tài khoản được thêm
	 */
	public void addTaiKhoan(TaiKhoan tai_khoan);

	/**
	 * Khai báo hàm cập nhật thông tin tài khoản vào CSDL
	 * @param tai_khoan đối tượng tài khoản được cập nhật thông tin
	 */
	public void updateTaiKhoan(TaiKhoan tai_khoan);
	
}
