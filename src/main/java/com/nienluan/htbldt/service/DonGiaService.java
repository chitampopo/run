package com.nienluan.htbldt.service;

import java.util.List;

import com.nienluan.htbldt.model.DonGia;

public interface DonGiaService {
	public DonGia get(int maDonGia);

	public DonGia getLasted(int maDt);
	
	public List<DonGia> list();

	public void delete(int maDonGia);

	public void add(DonGia donGia);

	public void update(DonGia donGia);
	
	public List<DonGia> getListDonGia(int maDt);
}
