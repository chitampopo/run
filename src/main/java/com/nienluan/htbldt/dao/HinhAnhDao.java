package com.nienluan.htbldt.dao;

import java.util.List;

import com.nienluan.htbldt.model.HinhAnh;

public interface HinhAnhDao {

	public HinhAnh getHinhAnh(int ma_anh);

	public List<HinhAnh> listHinhAnh();

	public void deleteHinhAnh(int ma_anh);

	public void addHinhAnh(HinhAnh hinh_anh);

	public void updateHinhAnh(HinhAnh hinh_anh);
	
	public int getMaHinhAnhMoiNhat();
}
