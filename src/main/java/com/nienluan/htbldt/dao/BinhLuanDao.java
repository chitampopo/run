package com.nienluan.htbldt.dao;

import java.util.List;

import com.nienluan.htbldt.model.BinhLuan;

public interface BinhLuanDao {
	
	public List<BinhLuan> listBinhLuan();
	
	public BinhLuan getBinhLuan(int maBl);
	
	public void updateBinhLuan(BinhLuan binhLuan);
	
	public void addBinhLuan(BinhLuan binhLuan);
	
	public void deleteBinhLuan(int maBl);
	
	public List<BinhLuan> listBinhLuan(int maDt);
}
