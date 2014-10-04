package com.nienluan.htbldt.service;

import java.util.List;

import com.nienluan.htbldt.model.CauHinh;

public interface CauHinhService {
	public CauHinh get(int maCauHinh);

	public List<CauHinh> list();

	public void delete(int maCauHinh);

	public void add(CauHinh cauHinh);

	public void update(CauHinh cauHinh);
}
