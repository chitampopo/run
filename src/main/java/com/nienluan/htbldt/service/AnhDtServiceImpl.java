package com.nienluan.htbldt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nienluan.htbldt.dao.AnhDtDao;
import com.nienluan.htbldt.model.AnhDt;

@Service
@Transactional
public class AnhDtServiceImpl implements AnhDtService {

	@Autowired
	AnhDtDao anhDtDao;
	
	@Override
	public AnhDt get(int maAnh) {
		return anhDtDao.get(maAnh);
	}

	@Override
	public void delete(int maAnh) {
		anhDtDao.delete(maAnh);
	}

	@Override
	public void add(AnhDt anhDt) {
		anhDtDao.add(anhDt);
	}

	@Override
	public void update(AnhDt anhDt) {
		anhDtDao.update(anhDt);
	}


}
