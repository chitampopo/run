package com.nienluan.htbldt.dao;

import java.util.List;

import com.nienluan.htbldt.model.CauHinh;

public interface CauHinhDao {
	public CauHinh get(int maCauHinh);

	public List<CauHinh> list();

	public void delete(int maCauHinh);

	public void add(CauHinh cauHinh);

	public void update(CauHinh cauHinh);
}
