package com.nienluan.htbldt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nienluan.htbldt.model.HangSx;

@Repository
public class HangSxDaoImpl implements HangSxDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public HangSx get(int maHangSx) {
		HangSx hangSx = (HangSx) getCurrentSession().get(HangSx.class, maHangSx);
		return hangSx;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<HangSx> list() {
		return getCurrentSession().createQuery("From HangSx").list();
	}

	@Override
	public void delete(int maHangSx) {

		HangSx hangSx = get(maHangSx);
		getCurrentSession().delete(hangSx);
	}

	@Override
	public void add(HangSx hangSx) {
		getCurrentSession().save(hangSx);
	}

	@Override
	public void update(HangSx hangSx) {
		getCurrentSession().update(hangSx);
	}

	@Override
	public void saveorupdate(HangSx hangSx) {
		getCurrentSession().saveOrUpdate(hangSx);
	}

}
