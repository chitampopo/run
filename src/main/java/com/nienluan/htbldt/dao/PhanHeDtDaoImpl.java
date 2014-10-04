package com.nienluan.htbldt.dao;

import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nienluan.htbldt.model.HangSx;
import com.nienluan.htbldt.model.PhanHeDt;

@Repository
public class PhanHeDtDaoImpl implements PhanHeDtDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public PhanHeDt get(int ma_phanHe) {
		PhanHeDt phanHeDt = (PhanHeDt) getCurrentSession().get(PhanHeDt.class, ma_phanHe);
		return phanHeDt;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PhanHeDt> list() {
		return getCurrentSession().createQuery("From PhanHeDt").list();
	}

	@Override
	public void delete(int ma_phanhe) {
		PhanHeDt phanHeDt = get(ma_phanhe);
		getCurrentSession().delete(phanHeDt);
		int ma = phanHeDt.getHangSx().getMaHangSx();
		// lấy loại tài khoản có cùng loại với tai_khoan
		HangSx hangSx = (HangSx) getCurrentSession().get(HangSx.class, ma);
		Set<PhanHeDt> phanHeDts = hangSx.getPhanHeDts(); 
		System.out.println("Hang san xuat " + hangSx.getTenHangSx() + " co " + phanHeDts.size() + " dong san pham");
	}

	@Override
	public void add(PhanHeDt phanHeDt) {
		int maHangSx = (int) phanHeDt.getHangSx().getMaHangSx();
		HangSx hangSx = (HangSx) getCurrentSession().get(HangSx.class, maHangSx);
		Set<PhanHeDt> phanHeDts = hangSx.getPhanHeDts();
		phanHeDts.add(phanHeDt);
		hangSx.setPhanHeDts(phanHeDts);
		phanHeDt.setHangSx(hangSx);
		getCurrentSession().update(hangSx);
		getCurrentSession().save(phanHeDt);
		System.out.println("Hang san xuat " + hangSx.getTenHangSx() + " co " + phanHeDts.size() + " dong san pham");
	}

	@Override
	public void update(PhanHeDt phanHeDt) {
		//lấy phân hệ đang tồn tại
		int maPhanHeDt = phanHeDt.getMaPhanHe();
		PhanHeDt oldphanHeDt = (PhanHeDt) getCurrentSession().get(PhanHeDt.class, maPhanHeDt);
		//Chỉnh sửa thông tin của phân hệ củ
		oldphanHeDt.setGhiChuPh(phanHeDt.getGhiChuPh());
		oldphanHeDt.setTenPhanHe(phanHeDt.getTenPhanHe());
		//hien thi
		int maHangSx = oldphanHeDt.getHangSx().getMaHangSx();
		HangSx hangSx = (HangSx) getCurrentSession().get(HangSx.class, maHangSx);
		Set<PhanHeDt> phanHeDts = hangSx.getPhanHeDts();
		System.out.println("Hang san xuat " + hangSx.getTenHangSx() + " co " + phanHeDts.size() + " dong san pham");
	}

}
