package com.nienluan.htbldt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nienluan.htbldt.dao.LoaiTkDao;
import com.nienluan.htbldt.model.LoaiTk;
import com.nienluan.htbldt.model.TaiKhoan;

@Service
@Transactional
public class LoaiTkServiceImpl implements LoaiTkService {

	@Autowired
	LoaiTkDao loaitkdao;
	
	@Override
	public List<LoaiTk> list() {
		return loaitkdao.list();
	}

	@Override
	public LoaiTk get(TaiKhoan taikhoan) {
		return loaitkdao.get(taikhoan);
	}

	@Override
	public void update(LoaiTk loaiTk) {
		loaitkdao.update(loaiTk);
	}

	@Override
	public LoaiTk getLoaiTk(int maLoaiTk) {
		return loaitkdao.getLoaiTk(maLoaiTk);
	}

}
