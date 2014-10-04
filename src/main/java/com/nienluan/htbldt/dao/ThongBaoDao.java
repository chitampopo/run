package com.nienluan.htbldt.dao;

import java.util.List;

import com.nienluan.htbldt.model.ThongBao;

public interface ThongBaoDao {
	public ThongBao get(int maTb);

	public List<ThongBao> list();
	
	public List<ThongBao> listAll();

	public void delete(int maTb);

	public void add(ThongBao thongBao);

	public void update(ThongBao thongBao);
}
