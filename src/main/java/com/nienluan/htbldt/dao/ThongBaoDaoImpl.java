package com.nienluan.htbldt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nienluan.htbldt.model.HinhAnh;
import com.nienluan.htbldt.model.TaiKhoan;
import com.nienluan.htbldt.model.ThongBao;
@Repository
public class ThongBaoDaoImpl implements ThongBaoDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public ThongBao get(int maTb) {
		ThongBao thongBao = (ThongBao) getCurrentSession().get(ThongBao.class, maTb);
		
		return thongBao;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ThongBao> list() {
		List<ThongBao> thongBaos = getCurrentSession().createQuery("From ThongBao").list();
		for(int i=0;i<thongBaos.size()-3;i++){
			thongBaos.remove(i);
		}
		for(int i=0;i<thongBaos.size();i++){
			System.out.println("hinh anh co ma anh = " + thongBaos.get(i).getHinhAnh().getMaAnh());
			HinhAnh hinhAnh = (HinhAnh) getCurrentSession().get(HinhAnh.class, thongBaos.get(i).getHinhAnh().getMaAnh());
			System.out.println("hinh anh co ma anh = " + hinhAnh.getMaAnh());
			thongBaos.get(i).setHinhAnh(hinhAnh);
		}
		return thongBaos;
	}

	@Override
	public void delete(int maTb) {
		ThongBao thongBao = get(maTb);
		getCurrentSession().delete(thongBao);
	}

	@Override
	public void add(ThongBao thongBao) {
		getCurrentSession().save(thongBao);
	}

	@Override
	public void update(ThongBao thongBao) {
		getCurrentSession().update(thongBao);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ThongBao> listAll() {
		List<ThongBao> thongBaos = getCurrentSession().createQuery("From ThongBao").list();
		for(int i=0;i<thongBaos.size();i++){
			//System.out.println("hinh anh co ma anh = " + thongBaos.get(i).getHinhAnh().getMaAnh());
			HinhAnh hinhAnh = (HinhAnh) getCurrentSession().get(HinhAnh.class, thongBaos.get(i).getHinhAnh().getMaAnh());
			//System.out.println("hinh anh co ma anh = " + hinhAnh.getMaAnh());
			thongBaos.get(i).setHinhAnh(hinhAnh);
			TaiKhoan taiKhoan = (TaiKhoan) getCurrentSession().get(TaiKhoan.class, thongBaos.get(i).getTaiKhoan().getMaTk());
			thongBaos.get(i).setTaiKhoan(taiKhoan);
		}
		return thongBaos;
	}

}
