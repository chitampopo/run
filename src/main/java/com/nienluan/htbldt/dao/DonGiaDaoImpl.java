package com.nienluan.htbldt.dao;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nienluan.htbldt.model.DienThoai;
import com.nienluan.htbldt.model.DonGia;

@Repository
public class DonGiaDaoImpl implements DonGiaDao {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public DonGia get(int maDonGia) {
		DonGia donGia = (DonGia) getCurrentSession().get(DonGia.class, maDonGia);
		return donGia;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<DonGia> list() {
		return getCurrentSession().createQuery("From DonGia").list();
	}

	@Override
	public void delete(int maDonGia) {
		DonGia donGia = get(maDonGia);
		getCurrentSession().delete(donGia);
	}

	@Override
	public void add(DonGia donGia) {
		int maDt = donGia.getDienThoai().getMaDt();
		DienThoai dienThoai = (DienThoai) getCurrentSession().get(DienThoai.class, maDt);
		Set<DonGia> donGias = dienThoai.getDonGias();
		donGias.add(donGia);
		dienThoai.setDonGias(donGias);
		getCurrentSession().update(dienThoai);
		getCurrentSession().save(donGia);
	}

	@Override
	public void update(DonGia donGia) {
		getCurrentSession().update(donGia);
	}

	@Override
	public DonGia getLasted(int maDt) {
		DienThoai dienThoai = (DienThoai) getCurrentSession().get(DienThoai.class, maDt);
		
		@SuppressWarnings("unchecked")
		List<DonGia> donGias = (List<DonGia>) dienThoai.getDonGias();
		
		Collections.sort(donGias, new Comparator<DonGia>() {
	        @Override
	        public int compare(DonGia  donGia1, DonGia  donGia2)
	        {
	            return  donGia1.getMaGia().compareTo(donGia2.getMaGia());
	        }
	    });
		return donGias.get(donGias.size()-1);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<DonGia> getListDonGia(int maDt) {
		return getCurrentSession().createQuery("From DonGia Where Ma_DT = " + maDt).list();
	}

}
