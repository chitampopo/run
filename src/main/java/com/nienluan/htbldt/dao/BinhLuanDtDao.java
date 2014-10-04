package com.nienluan.htbldt.dao;

import java.util.List;

import com.nienluan.htbldt.model.BinhLuanDt;
import com.nienluan.htbldt.model.DienThoai;

public interface BinhLuanDtDao {
	
	public List<BinhLuanDt> listBinhLuanDt();
	
	public List<BinhLuanDt> listBinhLuanDt(int maDt);
	
	public BinhLuanDt getBinhLuanDt(int maBl);
	
	public void updateBinhLuanDt(BinhLuanDt binhLuanDT);
	
	public void addBinhLuanDt(BinhLuanDt binhLuanDt);
	
	public void deleteBinhLuanDt(int maBl);
	
	public void deleteBinhLuanDt(DienThoai dienThoai);
	
	
}
