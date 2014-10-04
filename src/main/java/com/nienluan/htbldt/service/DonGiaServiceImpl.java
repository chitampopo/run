package com.nienluan.htbldt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nienluan.htbldt.dao.DonGiaDao;
import com.nienluan.htbldt.model.DonGia;
@Service
@Transactional
public class DonGiaServiceImpl implements DonGiaService {

	@Autowired
	DonGiaDao donGiaDao;
	
	@Override
	public DonGia get(int maDonGia) {
		return donGiaDao.get(maDonGia);
	}

	@Override
	public List<DonGia> list() {
		return donGiaDao.list();
	}

	@Override
	public void delete(int maDonGia) {
		donGiaDao.delete(maDonGia);
	}

	@Override
	public void add(DonGia donGia) {
		donGiaDao.add(donGia);
	}

	@Override
	public void update(DonGia donGia) {
		donGiaDao.update(donGia);
	}

	@Override
	public DonGia getLasted(int maDt) {
		return donGiaDao.getLasted(maDt);
	}

	@Override
	public List<DonGia> getListDonGia(int maDt) {
		List<DonGia> donGias = donGiaDao.getListDonGia(maDt);
		return donGias;
	}

}
