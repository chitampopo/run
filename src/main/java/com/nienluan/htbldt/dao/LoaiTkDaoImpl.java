package com.nienluan.htbldt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nienluan.htbldt.model.LoaiTk;
import com.nienluan.htbldt.model.TaiKhoan;

@Repository
public class LoaiTkDaoImpl implements LoaiTkDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<LoaiTk> list() {
		return getCurrentSession().createQuery("From LoaiTk").list();
	}

	@Override
	public LoaiTk get(TaiKhoan taikhoan) {
		return taikhoan.getLoaiTk();
	}

	@Override
	public void update(LoaiTk loaiTk) {
		getCurrentSession().update(loaiTk);
	}

	@Override
	public LoaiTk getLoaiTk(int maLoaiTk) {
		List<LoaiTk> loaiTks = list();
		LoaiTk loaiTk = loaiTks.get(maLoaiTk-1);
		return loaiTk;
	}

}
