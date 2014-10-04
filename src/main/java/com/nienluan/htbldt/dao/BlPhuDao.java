package com.nienluan.htbldt.dao;

import java.util.List;

import com.nienluan.htbldt.model.BinhLuan;
import com.nienluan.htbldt.model.BlPhu;

public interface BlPhuDao {
	
	public List<BlPhu> listBlPhu();
	
	public List<BlPhu> listBlPhu(int maBl);
	
	public BlPhu getBlPhu(int maBl);
	
	public void updateBlPhu(BlPhu blPhu);
	
	public void addBlPhu(BlPhu blPhu);
	
	public void deleteBlPhu(int maBlPhu);
	
	public void deleteBlPhu(BinhLuan binhLuan);
	
	
}
