package com.nienluan.htbldt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nienluan.htbldt.dao.HinhAnhDao;
import com.nienluan.htbldt.model.HinhAnh;

@Service
@Transactional
public class HinhAnhServiceImpl implements HinhAnhService {

	@Autowired
	HinhAnhDao hinhanhdao;
	
	@Override
	public HinhAnh getHinhAnh(int ma_anh) {
		return hinhanhdao.getHinhAnh(ma_anh);
	}

	@Override
	public List<HinhAnh> listHinhAnh() {
		return hinhanhdao.listHinhAnh();
	}

	@Override
	public void deleteHinhAnh(int ma_anh) {
		hinhanhdao.deleteHinhAnh(ma_anh);
	}

	@Override
	public void addHinhAnh(HinhAnh hinh_anh) {
		hinhanhdao.addHinhAnh(hinh_anh);
	}

	@Override
	public void updateHinhAnh(HinhAnh hinh_anh) {
		hinhanhdao.updateHinhAnh(hinh_anh);
	}

	@Override
	public int getMaHinhAnhMoiNhat() {
		return hinhanhdao.getMaHinhAnhMoiNhat();
	}

}
