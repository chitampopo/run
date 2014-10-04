package com.nienluan.htbldt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nienluan.htbldt.dao.DienThoaiDao;
import com.nienluan.htbldt.model.ChuoiTimKiem;
import com.nienluan.htbldt.model.DienThoai;
import com.nienluan.htbldt.model.DonGia;
@Service
@Transactional
public class DienThoaiServiceImpl implements DienThoaiService {

	@Autowired
	DienThoaiDao dienThoaiDao;
	
	@Override
	public DienThoai get(int maDt) {
		return dienThoaiDao.get(maDt);
	}

	@Override
	public List<DienThoai> list() {
		return dienThoaiDao.list();
	}

	@Override
	public void delete(int maDt) {
		dienThoaiDao.delete(maDt);
	}

	@Override
	public void add(DienThoai dienThoai) {
		dienThoaiDao.add(dienThoai);
	}

	@Override
	public void update(DienThoai dienThoai) {
		dienThoaiDao.update(dienThoai);
	}

	@Override
	public DonGia getLastedDonGia(int maDt) {
		return dienThoaiDao.getLastedDonGia(maDt);
	}

	@Override
	public List<Integer> getHinhAnh(int maDt) {
		return dienThoaiDao.getHinhAnh(maDt);
	}

	@Override
	public List<DienThoai> timKiem(ChuoiTimKiem chuoiTimKiem) {
		return dienThoaiDao.timKiem(chuoiTimKiem);
	}

}
