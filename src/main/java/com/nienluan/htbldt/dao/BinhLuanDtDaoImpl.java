package com.nienluan.htbldt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nienluan.htbldt.model.BinhLuanDt;
import com.nienluan.htbldt.model.DienThoai;

@Repository
public class BinhLuanDtDaoImpl implements BinhLuanDtDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BinhLuanDt> listBinhLuanDt() {
		return getCurrentSession().createQuery("From BinhLuanDt").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BinhLuanDt> listBinhLuanDt(int maDt) {
		return getCurrentSession().createQuery("From BinhLuanDt where MA_DT=" + maDt).list();
	}

	@Override
	public BinhLuanDt getBinhLuanDt(int maBl) {
		BinhLuanDt bldt = (BinhLuanDt) getCurrentSession().get(BinhLuanDt.class, maBl);
		return bldt;
	}

	@Override
	public void updateBinhLuanDt(BinhLuanDt binhLuanDT) {
		getCurrentSession().update(binhLuanDT);
	}

	@Override
	public void addBinhLuanDt(BinhLuanDt binhLuanDt) {
		getCurrentSession().save(binhLuanDt);
		
	}

	@Override
	public void deleteBinhLuanDt(int maBl) {
		BinhLuanDt binhLuanDt = getBinhLuanDt(maBl);
		getCurrentSession().delete(binhLuanDt);
		
	}

	@Override
	public void deleteBinhLuanDt(DienThoai dienThoai) {
		
		getCurrentSession().createQuery("Delete BinhLuanDt where MA_DT=" + dienThoai.getMaDt());
	}

}
