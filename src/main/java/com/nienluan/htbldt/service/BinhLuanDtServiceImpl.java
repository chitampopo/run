package com.nienluan.htbldt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nienluan.htbldt.dao.BinhLuanDtDao;
import com.nienluan.htbldt.model.BinhLuanDt;
import com.nienluan.htbldt.model.DienThoai;

@Service
@Transactional
public class BinhLuanDtServiceImpl implements BinhLuanDtService {

	@Autowired
	BinhLuanDtDao binhLuanDtdao;

	@Override
	public List<BinhLuanDt> listBinhLuanDt() {
		return binhLuanDtdao.listBinhLuanDt();
	}

	@Override
	public List<BinhLuanDt> listBinhLuanDt(int maDt) {
		return binhLuanDtdao.listBinhLuanDt(maDt);
	}

	@Override
	public BinhLuanDt getBinhLuanDt(int maBl) {
		return binhLuanDtdao.getBinhLuanDt(maBl);
	}

	@Override
	public void updateBinhLuanDt(BinhLuanDt binhLuanDT) {
		binhLuanDtdao.updateBinhLuanDt(binhLuanDT);
	}

	@Override
	public void addBinhLuanDt(BinhLuanDt binhLuanDt) {
		binhLuanDtdao.addBinhLuanDt(binhLuanDt);
	}

	@Override
	public void deleteBinhLuanDt(int maBl) {
		binhLuanDtdao.deleteBinhLuanDt(maBl);
	}

	@Override
	public void deleteBinhLuanDt(DienThoai dienThoai) {
		binhLuanDtdao.deleteBinhLuanDt(dienThoai);
	}



}
