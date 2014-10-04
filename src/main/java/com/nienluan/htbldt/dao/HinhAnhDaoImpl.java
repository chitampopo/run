package com.nienluan.htbldt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nienluan.htbldt.model.HinhAnh;

@Repository
public class HinhAnhDaoImpl implements HinhAnhDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public HinhAnh getHinhAnh(int ma_anh) {
		HinhAnh hinh_anh = (HinhAnh) getCurrentSession().get(HinhAnh.class, ma_anh);
		return hinh_anh;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<HinhAnh> listHinhAnh() {
		return getCurrentSession().createQuery("From HinhAnh").list();
	}

	@Override
	public void deleteHinhAnh(int ma_anh) {
		HinhAnh hinh_anh = getHinhAnh(ma_anh);
		getCurrentSession().delete(hinh_anh);
	}

	@Override
	public void addHinhAnh(HinhAnh hinh_anh) {
		getCurrentSession().save(hinh_anh);
	}

	@Override
	public void updateHinhAnh(HinhAnh hinh_anh) {
		getCurrentSession().update(hinh_anh);
	}

	@Override
	public int getMaHinhAnhMoiNhat() {
		List<HinhAnh> hinhAnhs = listHinhAnh();
		int ans = 0;
		for(int i=0;i<hinhAnhs.size();i++){
			if(hinhAnhs.get(i).getMaAnh()>ans){
				ans=hinhAnhs.get(i).getMaAnh();
			}
		}
		return ans;
	}

}
