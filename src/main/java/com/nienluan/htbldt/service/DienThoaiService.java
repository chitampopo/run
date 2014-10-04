package com.nienluan.htbldt.service;

import java.util.List;

import com.nienluan.htbldt.model.ChuoiTimKiem;
import com.nienluan.htbldt.model.DienThoai;
import com.nienluan.htbldt.model.DonGia;

public interface DienThoaiService {
	public DienThoai get(int maDt);

	public List<DienThoai> list();

	public void delete(int maDt);

	public void add(DienThoai dienThoai);

	public void update(DienThoai dienThoai);
	
	public DonGia getLastedDonGia(int maDt);
	
	public List<Integer> getHinhAnh(int maDt);
	
	public List<DienThoai> timKiem(ChuoiTimKiem chuoiTimKiem);
}
