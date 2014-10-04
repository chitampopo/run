package com.nienluan.htbldt.service;

import java.util.List;

import com.nienluan.htbldt.model.PhanHeDt;

public interface PhanHeDtService {

	public PhanHeDt get(int ma_phanHe);

	public List<PhanHeDt> list();

	public void delete(int ma_phanhe);

	public void add(PhanHeDt phanHeDt);

	public void update(PhanHeDt phanHeDt);
}
