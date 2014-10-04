package com.nienluan.htbldt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nienluan.htbldt.model.BinhLuan;
import com.nienluan.htbldt.model.BlPhu;

@Repository
public class BlPhuDaoImpl implements BlPhuDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BlPhu> listBlPhu() {
		return getCurrentSession().createQuery("From BinhLuanDt").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BlPhu> listBlPhu(int maBl) {
		return getCurrentSession().createQuery("From BlPhu Where MA_BL_C=" + maBl).list();
	}

	@Override
	public BlPhu getBlPhu(int maBl) {
		BlPhu blp = (BlPhu) getCurrentSession().get(BlPhu.class, maBl);
		return blp;
	}

	@Override
	public void updateBlPhu(BlPhu blPhu) {
		getCurrentSession().update(blPhu);
		
	}

	@Override
	public void addBlPhu(BlPhu blPhu) {
		getCurrentSession().save(blPhu);
		
	}

	@Override
	public void deleteBlPhu(int maBlPhu) {
		BlPhu blPhu = getBlPhu(maBlPhu);
		getCurrentSession().delete(blPhu);
	}

	@Override
	public void deleteBlPhu(BinhLuan binhLuan) {
		getCurrentSession().createQuery("Delete BlPhu where MA_BL_C = " + binhLuan.getMaBl());
	}




}
