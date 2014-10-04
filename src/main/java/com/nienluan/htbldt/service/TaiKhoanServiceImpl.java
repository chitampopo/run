package com.nienluan.htbldt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nienluan.htbldt.dao.LoaiTkDao;
import com.nienluan.htbldt.dao.TaiKhoanDao;
import com.nienluan.htbldt.model.TaiKhoan;

/**
 * Lớp này cấu hình các dịch vụ liên quan đến model TaiKhoan
 * @author Nguyễn Chí Tâm
 * Date: 12/09/2014
 */
@Service
@Transactional
public class TaiKhoanServiceImpl implements TaiKhoanService {

	@Autowired
	TaiKhoanDao tai_khoan_dao;
	
	@Autowired
	LoaiTkDao loai_tk_dao;
	/**
	 * Hàm này lấy thông tin 1 tài khoản từ CSDL bằng mã tài khoản
	 */
	@Override
	public TaiKhoan getTaiKhoan(int ma_tai_khoan){
		return tai_khoan_dao.getTaiKhoan(ma_tai_khoan);
	}

	/**
	 * Hàm này cập nhật tài khoản trong CSDL bằng đối tượng tài khoản
	 */
	@Override
	public void updateTaiKhoan(TaiKhoan tai_khoan) {
		tai_khoan_dao.updateTaiKhoan(tai_khoan);
	}

	/**
	 * Hàm này lấy danh sách tài khoản từ CSDL vào đối tượng List<TaiKhoan>
	 */
	@Override
	public List<TaiKhoan> listTaiKhoan() {
		return tai_khoan_dao.listTaiKhoan();
	}

	/**
	 * Hàm này xóa tài khoản trong CSDL bằng mã tài khoản
	 */
	@Override
	public void deleteTaiKhoan(int ma_tai_khoan) {
		tai_khoan_dao.deleteTaiKhoan(ma_tai_khoan);
	}

	/**
	 * Hàm này cấu hình thêm tài khoản vào CSDL bằng đối tượng tài khoản
	 */
	@Override
	public void addTaiKhoan(TaiKhoan tai_khoan) {
		tai_khoan_dao.addTaiKhoan(tai_khoan);
	}


}
