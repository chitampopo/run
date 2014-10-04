package com.nienluan.htbldt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nienluan.htbldt.dao.BlPhuDao;
import com.nienluan.htbldt.model.BinhLuan;
import com.nienluan.htbldt.model.BlPhu;

@Service
@Transactional
public class BlPhuServiceImpl implements BlPhuService {

	@Autowired
	BlPhuDao blPhudao;

	@Override
	public List<BlPhu> listBlPhu() {
		return blPhudao.listBlPhu();
	}

	@Override
	public List<BlPhu> listBlPhu(int maBl) {
		return blPhudao.listBlPhu(maBl);
	}

	@Override
	public BlPhu getBlPhu(int maBl) {
		return blPhudao.getBlPhu(maBl);
	}

	@Override
	public void updateBlPhu(BlPhu blPhu) {
		blPhudao.updateBlPhu(blPhu);
	}

	@Override
	public void addBlPhu(BlPhu blPhu) {
		blPhudao.addBlPhu(blPhu);
	}

	@Override
	public void deleteBlPhu(int maBlPhu) {
		blPhudao.deleteBlPhu(maBlPhu);
	}

	@Override
	public void deleteBlPhu(BinhLuan binhLuan) {
		blPhudao.deleteBlPhu(binhLuan);
	}


	

}
