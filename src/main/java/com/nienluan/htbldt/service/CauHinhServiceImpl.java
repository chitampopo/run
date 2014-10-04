package com.nienluan.htbldt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nienluan.htbldt.dao.CauHinhDao;
import com.nienluan.htbldt.model.CauHinh;
@Service
@Transactional
public class CauHinhServiceImpl implements CauHinhService {
	
	@Autowired
	CauHinhDao cauHinhDao;
	
	@Override
	public CauHinh get(int maCauHinh) {
		return cauHinhDao.get(maCauHinh);
	}

	@Override
	public List<CauHinh> list() {
		return cauHinhDao.list();
	}

	@Override
	public void delete(int maCauHinh) {
		cauHinhDao.delete(maCauHinh);
	}

	@Override
	public void add(CauHinh cauHinh) {
		cauHinhDao.add(cauHinh);
	}

	@Override
	public void update(CauHinh cauHinh) {
		cauHinhDao.update(cauHinh);
	}

}
