package com.nienluan.htbldt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nienluan.htbldt.dao.BinhLuanDao;
import com.nienluan.htbldt.model.BinhLuan;

@Service
@Transactional
public class BinhLuanServiceImpl implements BinhLuanService {

	@Autowired
	BinhLuanDao binhLuandao;

	@Override
	public List<BinhLuan> listBinhLuan() {
		return binhLuandao.listBinhLuan();
	}

	@Override
	public BinhLuan getBinhLuan(int maBl) {
		return binhLuandao.getBinhLuan(maBl);
	}

	@Override
	public void updateBinhLuan(BinhLuan binhLuan) {
		binhLuandao.updateBinhLuan(binhLuan);
	}

	@Override
	public void addBinhLuan(BinhLuan binhLuan) {
		binhLuandao.addBinhLuan(binhLuan);
	}

	@Override
	public void deleteBinhLuan(int maBl) {
		binhLuandao.deleteBinhLuan(maBl);
	}

	@Override
	public List<BinhLuan> listBinhLuan(int maDt) {
		return binhLuandao.listBinhLuan(maDt);
	}
	

}
