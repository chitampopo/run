package com.nienluan.htbldt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nienluan.htbldt.dao.ThongBaoDao;
import com.nienluan.htbldt.model.ThongBao;
@Service
@Transactional
public class ThongBaoServiceImpl implements ThongBaoService {

	@Autowired
	ThongBaoDao thongBaoDao;
	
	@Override
	public ThongBao get(int maTb) {
		return thongBaoDao.get(maTb);
	}

	@Override
	public List<ThongBao> list() {
		return thongBaoDao.list();
	}

	@Override
	public void delete(int maTb) {
		thongBaoDao.delete(maTb);
	}

	@Override
	public void add(ThongBao thongBao) {
		thongBaoDao.add(thongBao);
		
	}

	@Override
	public void update(ThongBao thongBao) {
		thongBaoDao.update(thongBao);
	}

	@Override
	public List<ThongBao> listAll() {
		return thongBaoDao.listAll();
	}
}
