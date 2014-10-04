package com.nienluan.htbldt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nienluan.htbldt.dao.PhanHeDtDao;
import com.nienluan.htbldt.model.PhanHeDt;

@Service
@Transactional
public class PhanHeDtServiceImpl implements PhanHeDtService {
	
	@Autowired
	PhanHeDtDao phanHeDtDao;
	
	@Override
	public PhanHeDt get(int ma_phanHe) {
		return phanHeDtDao.get(ma_phanHe);
	}

	@Override
	public List<PhanHeDt> list() {
		return phanHeDtDao.list();
	}

	@Override
	public void delete(int ma_phanhe) {
		phanHeDtDao.delete(ma_phanhe);
	}

	@Override
	public void add(PhanHeDt phanHeDt) {
		phanHeDtDao.add(phanHeDt);
	}

	@Override
	public void update(PhanHeDt phanHeDt) {
		phanHeDtDao.update(phanHeDt);
	}

}
