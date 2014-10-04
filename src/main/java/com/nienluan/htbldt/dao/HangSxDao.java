package com.nienluan.htbldt.dao;

import java.util.List;

import com.nienluan.htbldt.model.HangSx;

public interface HangSxDao {
	public HangSx get(int maHangSx);

	public List<HangSx> list();

	public void delete(int maHangSx);

	public void add(HangSx hangSx);

	public void update(HangSx hangSx);
	
	public void saveorupdate(HangSx hangSx);
}
