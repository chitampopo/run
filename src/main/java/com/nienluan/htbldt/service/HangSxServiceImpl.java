package com.nienluan.htbldt.service;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nienluan.htbldt.dao.HangSxDao;
import com.nienluan.htbldt.dao.PhanHeDtDao;
import com.nienluan.htbldt.model.HangSx;
import com.nienluan.htbldt.model.PhanHeDt;
@Service
@Transactional
public class HangSxServiceImpl implements HangSxService {

	@Autowired
	HangSxDao hangSxDao;
	
	@Autowired
	PhanHeDtDao phanHeDtDao;
	
	@Override
	public HangSx get(int maHangSx) {
		return hangSxDao.get(maHangSx);
	}

	@Override
	public List<HangSx> list() {
		return hangSxDao.list();
	}

	@Override
	public void delete(int maHangSx) {
		Set <PhanHeDt> phanHeDts = hangSxDao.get(maHangSx).getPhanHeDts();
		for (PhanHeDt phanHeDt : phanHeDts) {
			phanHeDtDao.delete(phanHeDt.getMaPhanHe());
		}
		hangSxDao.delete(maHangSx);
	}

	@Override
	public void add(HangSx hangSx) {
		hangSxDao.add(hangSx);
	}

	@Override
	public void update(HangSx hangSx) {
		hangSxDao.update(hangSx);
	}

	@Override
	public void saveorupdate(HangSx hangSx) {
		hangSxDao.saveorupdate(hangSx);
	}

}
