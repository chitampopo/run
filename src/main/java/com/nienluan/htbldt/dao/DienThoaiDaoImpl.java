package com.nienluan.htbldt.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nienluan.htbldt.model.AnhDt;
import com.nienluan.htbldt.model.CauHinh;
import com.nienluan.htbldt.model.ChuoiTimKiem;
import com.nienluan.htbldt.model.DienThoai;
import com.nienluan.htbldt.model.DonGia;
import com.nienluan.htbldt.model.HinhAnh;
import com.nienluan.htbldt.model.PhanHeDt;

@Repository
public class DienThoaiDaoImpl implements DienThoaiDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public DienThoai get(int maDienThoai) {
		DienThoai DienThoai = (DienThoai) getCurrentSession().get(DienThoai.class, maDienThoai);
		int maCauHinh = DienThoai.getCauHinh().getMaCh();
		CauHinh cauHinh = (CauHinh) getCurrentSession().get(CauHinh.class, maCauHinh);
		int maPhanHeDt = DienThoai.getPhanHeDt().getMaPhanHe();
		PhanHeDt phanHeDt = (PhanHeDt) getCurrentSession().get(PhanHeDt.class, maPhanHeDt);
		DienThoai.setCauHinh(cauHinh);
		DienThoai.setPhanHeDt(phanHeDt);
		@SuppressWarnings("unchecked")
		List<DonGia> dsdonGia = getCurrentSession().createQuery("From DonGia Where MA_DT = " + DienThoai.getMaDt()).list();
		Set<DonGia> donGias = new HashSet<DonGia>(); 
		if(dsdonGia.size()>0){
			donGias.add(dsdonGia.get(dsdonGia.size()-1));
		} else{
			donGias.add(null);
		}
		List<Integer> maHinhAnhs = getHinhAnh(DienThoai.getMaDt());
		List<HinhAnh> hinhAnhs = new ArrayList<HinhAnh>();
		for(int j=0;j<maHinhAnhs.size();j++){
			HinhAnh hinhAnh = (HinhAnh) getCurrentSession().get(HinhAnh.class, maHinhAnhs.get(j));
			hinhAnhs.add(hinhAnh);
		}
		Set<AnhDt> anhDts = new HashSet<AnhDt>();
		for(int j=0;j<hinhAnhs.size();j++){
			AnhDt anhDt = new AnhDt(DienThoai, hinhAnhs.get(j));
			anhDt.setMaAnh(maHinhAnhs.get(j));
			anhDts.add(anhDt);
		}
		DienThoai.setAnhDts(anhDts);
		DienThoai.setDonGias(donGias);
		return DienThoai;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<DienThoai> list() {
		List<DienThoai> dienThoais = getCurrentSession().createQuery("From DienThoai").list();
		for(int i=0;i<dienThoais.size();i++){
			CauHinh cauHinh = (CauHinh) getCurrentSession().get(CauHinh.class, dienThoais.get(i).getCauHinh().getMaCh());
			dienThoais.get(i).setCauHinh(cauHinh);
			PhanHeDt phanHeDt = (PhanHeDt) getCurrentSession().get(PhanHeDt.class, dienThoais.get(i).getPhanHeDt().getMaPhanHe());
			dienThoais.get(i).setPhanHeDt(phanHeDt);
			List<DonGia> dsdonGia = getCurrentSession().createQuery("From DonGia Where MA_DT = " + dienThoais.get(i).getMaDt()).list();
			Set<DonGia> donGias  = new HashSet<DonGia>();
			List<Integer> maHinhAnhs = getHinhAnh(dienThoais.get(i).getMaDt());
			List<HinhAnh> hinhAnhs = new ArrayList<HinhAnh>();
			for(int j=0;j<maHinhAnhs.size();j++){
				HinhAnh hinhAnh = (HinhAnh) getCurrentSession().get(HinhAnh.class, maHinhAnhs.get(j));
				hinhAnhs.add(hinhAnh);
			}
			Set<AnhDt> anhDts = new HashSet<AnhDt>();
			for(int j=0;j<hinhAnhs.size();j++){
				AnhDt anhDt = new AnhDt(dienThoais.get(i), hinhAnhs.get(j));
				anhDt.setMaAnh(maHinhAnhs.get(j));
				anhDts.add(anhDt);
			}
			if(dsdonGia.size()>0){
				donGias.add(dsdonGia.get(dsdonGia.size()-1));
			} else{
				donGias.add(null);
			}
			dienThoais.get(i).setDonGias(donGias);
			dienThoais.get(i).setAnhDts(anhDts);
		}
		return dienThoais;
	}

	@Override
	public void delete(int maDienThoai) {
		DienThoai DienThoai = get(maDienThoai);
		getCurrentSession().delete(DienThoai);
		int maCauHinh = DienThoai.getCauHinh().getMaCh();
		CauHinh cauHinh = (CauHinh) getCurrentSession().get(CauHinh.class, maCauHinh);
		getCurrentSession().delete(cauHinh);
		
	}

	@Override
	public void add(DienThoai DienThoai) {
		int maPhanHeDt = DienThoai.getPhanHeDt().getMaPhanHe();
		PhanHeDt phanHeDt = (PhanHeDt) getCurrentSession().get(PhanHeDt.class, maPhanHeDt);
		Set<DienThoai> dienThoais = phanHeDt.getDienThoais();
		dienThoais.add(DienThoai);
		phanHeDt.setDienThoais(dienThoais);
		CauHinh cauHinh = DienThoai.getCauHinh();
		DienThoai.setCauHinh(cauHinh);
		getCurrentSession().saveOrUpdate(phanHeDt);
		getCurrentSession().save(cauHinh);
		getCurrentSession().save(DienThoai);
	}

	@Override
	public void update(DienThoai dienThoai) {
		System.out.println("ma dien thoai dc cap nhat " + dienThoai.getMaDt());
		DienThoai newDienThoai = get(dienThoai.getMaDt()); 
		newDienThoai.setCauHinh(dienThoai.getCauHinh());
		newDienThoai.setGhiChuDt(dienThoai.getGhiChuDt());
		newDienThoai.setPhanHeDt(dienThoai.getPhanHeDt());
		newDienThoai.setPhuKien(dienThoai.getPhuKien());
		newDienThoai.setSlConLai(dienThoai.getSlConLai());
		newDienThoai.setTenDt(dienThoai.getTenDt());
		newDienThoai.setTgBaoHanh(dienThoai.getTgBaoHanh());
		getCurrentSession().update(newDienThoai);
	}

	@Override
	public DonGia getLastedDonGia(int maDt) {
		@SuppressWarnings("unchecked")
		List<DonGia> donGias = getCurrentSession().createQuery("From DonGia Where MA_DT = " + maDt).list();
		Collections.sort(donGias, new Comparator<DonGia>() {
	        @Override
	        public int compare(DonGia  donGia1, DonGia  donGia2)
	        {
	            return  donGia1.getMaGia().compareTo(donGia2.getMaGia());
	        }
	    });
		return donGias.get(donGias.size()-1);
		
	}

	@Override
	public List<Integer> getHinhAnh(int maDt) {
		@SuppressWarnings("unchecked")
		List<AnhDt> anhDts = getCurrentSession().createQuery("From AnhDt Where MA_DT = " + maDt).list();
		//System.out.println("Co tong cong " + anhDts.size() + " anh.");
		
		List<Integer> maHinhAnhs = new ArrayList<Integer>();
		for(int i=0;i<anhDts.size();i++){
			//maHinhAnhs.add(anhDts.get(i).getMaAnh());
			//System.out.println(anhDts.get(i).getMaAnh());
			maHinhAnhs.add(i, (Integer)anhDts.get(i).getMaAnh());
		}
		return maHinhAnhs;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<DienThoai> timKiem(ChuoiTimKiem chuoiTimKiem) {
		List<DienThoai> dienThoais = getCurrentSession().createQuery("From DienThoai Where TEN_DT LIKE '%" + chuoiTimKiem.getValue() + "%'").list();
		for(int i=0;i<dienThoais.size();i++){
			CauHinh cauHinh = (CauHinh) getCurrentSession().get(CauHinh.class, dienThoais.get(i).getCauHinh().getMaCh());
			dienThoais.get(i).setCauHinh(cauHinh);
			PhanHeDt phanHeDt = (PhanHeDt) getCurrentSession().get(PhanHeDt.class, dienThoais.get(i).getPhanHeDt().getMaPhanHe());
			dienThoais.get(i).setPhanHeDt(phanHeDt);
			List<DonGia> dsdonGia = getCurrentSession().createQuery("From DonGia Where MA_DT = " + dienThoais.get(i).getMaDt()).list();
			Set<DonGia> donGias  = new HashSet<DonGia>();
			List<Integer> maHinhAnhs = getHinhAnh(dienThoais.get(i).getMaDt());
			List<HinhAnh> hinhAnhs = new ArrayList<HinhAnh>();
			for(int j=0;j<maHinhAnhs.size();j++){
				HinhAnh hinhAnh = (HinhAnh) getCurrentSession().get(HinhAnh.class, maHinhAnhs.get(j));
				hinhAnhs.add(hinhAnh);
			}
			Set<AnhDt> anhDts = new HashSet<AnhDt>();
			for(int j=0;j<hinhAnhs.size();j++){
				AnhDt anhDt = new AnhDt(dienThoais.get(i), hinhAnhs.get(j));
				anhDt.setMaAnh(maHinhAnhs.get(j));
				anhDts.add(anhDt);
			}
			if(dsdonGia.size()>0){
				donGias.add(dsdonGia.get(dsdonGia.size()-1));
			} else{
				donGias.add(null);
			}
			dienThoais.get(i).setDonGias(donGias);
			dienThoais.get(i).setAnhDts(anhDts);
		}
		return dienThoais;
	}

}
