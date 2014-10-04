package com.nienluan.htbldt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nienluan.htbldt.model.CauHinh;

@Repository
public class CauHinhDaoImpl implements CauHinhDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public CauHinh get(int maCauHinh) {
		CauHinh cauHinh = (CauHinh) getCurrentSession().get(CauHinh.class, maCauHinh);
		return cauHinh;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CauHinh> list() {
		return getCurrentSession().createQuery("From CauHinh").list();
	}

	@Override
	public void delete(int maCauHinh) {
		CauHinh cauHinh = get(maCauHinh);
		getCurrentSession().delete(cauHinh);
	}

	@Override
	public void add(CauHinh cauHinh) {
		getCurrentSession().save(cauHinh);
	}

	@Override
	public void update(CauHinh cauHinh) {
		getCurrentSession().update(cauHinh);
	}

}
