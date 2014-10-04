package com.nienluan.htbldt.dao;

import com.nienluan.htbldt.model.AnhDt;


public interface AnhDtDao {
	public AnhDt get(int maAnh);

	public void delete(int maAnh);

	public void add(AnhDt anhDt);

	public void update(AnhDt anhDt);
}
