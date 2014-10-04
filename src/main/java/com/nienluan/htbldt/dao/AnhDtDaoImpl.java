package com.nienluan.htbldt.dao;

import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nienluan.htbldt.model.AnhDt;
import com.nienluan.htbldt.model.DienThoai;
import com.nienluan.htbldt.model.HinhAnh;

@Repository
public class AnhDtDaoImpl implements AnhDtDao {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public AnhDt get(int maAnh) {
		AnhDt anhDt = (AnhDt) getCurrentSession().get(AnhDt.class, maAnh);
		return anhDt;
	}

	@Override
	public void delete(int maAnh) {
		AnhDt anhDt = get(maAnh);
		HinhAnh hinhAnh = (HinhAnh) getCurrentSession().get(HinhAnh.class, anhDt.getMaAnh());
		getCurrentSession().delete(anhDt);
		getCurrentSession().delete(hinhAnh);	
	}

	@Override
	public void add(AnhDt anhDt) {
		DienThoai dienThoai = (DienThoai) getCurrentSession().get(DienThoai.class, anhDt.getDienThoai().getMaDt());
		Set<AnhDt> anhDts = dienThoai.getAnhDts();
		anhDts.add(anhDt);
		dienThoai.setAnhDts(anhDts);
		HinhAnh hinhAnh = (HinhAnh) getCurrentSession().get(HinhAnh.class, anhDt.getHinhAnh().getMaAnh());
		hinhAnh.setAnhDt(anhDt);
		
		getCurrentSession().update(hinhAnh);
		getCurrentSession().update(dienThoai);
		getCurrentSession().save(anhDt);
	}

	@Override
	public void update(AnhDt anhDt) {
		getCurrentSession().save(anhDt);
	}

}
