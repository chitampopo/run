package com.nienluan.htbldt.service;

import java.util.List;

import com.nienluan.htbldt.model.LoaiTk;
import com.nienluan.htbldt.model.TaiKhoan;

public interface LoaiTkService {

	public List<LoaiTk> list();
	
	public LoaiTk get(TaiKhoan taikhoan);
	
	public void update(LoaiTk loaiTk);
	
	public LoaiTk getLoaiTk(int maLoaiTk);
}
