package com.nienluan.htbldt.service;

import com.nienluan.htbldt.model.AnhDt;

public interface AnhDtService {
	public AnhDt get(int maAnh);

	public void delete(int maAnh);

	public void add(AnhDt anhDt);

	public void update(AnhDt anhDt);
	
}
