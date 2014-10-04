package com.nienluan.htbldt.dao;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nienluan.htbldt.model.BinhLuan;
import com.nienluan.htbldt.model.BinhLuanDt;
import com.nienluan.htbldt.model.BlPhu;
import com.nienluan.htbldt.model.TaiKhoan;

@Repository
public class BinhLuanDaoImpl implements BinhLuanDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<BinhLuan> listBinhLuan() {
		return getCurrentSession().createQuery("From BinhLuan").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public BinhLuan getBinhLuan(int maBl) {
		BinhLuan bl =  (BinhLuan) getCurrentSession().get(BinhLuan.class, maBl);
		
		int maTk = bl.getTaiKhoan().getMaTk();
		TaiKhoan taiKhoan = (TaiKhoan) getCurrentSession().get(TaiKhoan.class, maTk);
		bl.setTaiKhoan(taiKhoan);
		
		BinhLuanDt bldt = (BinhLuanDt) getCurrentSession().get(BinhLuanDt.class, maBl);
		bl.setBinhLuanDt(bldt);
		
		BlPhu blp = (BlPhu) getCurrentSession().get(BlPhu.class, maBl);
		bl.setBlPhuByMaBl(blp);
		
		List<BlPhu> listblp = getCurrentSession().createQuery("From BlPhu WHERE MA_BL_C = " + maBl).list();
		Set<BlPhu> setblp = new HashSet<BlPhu>();
		if(listblp != null && !listblp.isEmpty() ){
			int size = listblp.size() ;
			for(int i = 0 ; i < size ; i ++)
				setblp.add(listblp.get(i));
			
			bl.setBlPhusForMaBlC(setblp);
		}
		
		return bl;
	}

	@Override
	public void updateBinhLuan(BinhLuan binhLuan) {
		getCurrentSession().update(binhLuan);
		
	}

	@Override
	public void addBinhLuan(BinhLuan binhLuan) {
		int maTk = binhLuan.getTaiKhoan().getMaTk();
		BlPhu blPhu = binhLuan.getBlPhuByMaBl();
		BinhLuanDt blDt = binhLuan.getBinhLuanDt();
		
		TaiKhoan tk = (TaiKhoan) getCurrentSession().get(TaiKhoan.class, maTk);
		Set<BinhLuan> setBl = tk.getBinhLuans();
		setBl.add(binhLuan);
		tk.setBinhLuans(setBl);
		
		getCurrentSession().save(binhLuan);
		getCurrentSession().saveOrUpdate(tk);
		if( blDt != null )
			getCurrentSession().saveOrUpdate(blDt);
		if( blPhu != null )
			getCurrentSession().saveOrUpdate(blPhu);
		
		
	}

	@Override
	public void deleteBinhLuan(int maBl) {
		BinhLuan bl = getBinhLuan(maBl);
		BlPhu blp = bl.getBlPhuByMaBl();
		BinhLuanDt bldt = bl.getBinhLuanDt();
		Set<BlPhu> set = bl.getBlPhusForMaBlC();
		List<BlPhu> lsBlP = new ArrayList<BlPhu>(); 
		set.containsAll(lsBlP);
		if(lsBlP != null)
			for(int i = 0 ; i < lsBlP.size() ; i ++ ){
				getCurrentSession().delete(lsBlP.get(i));
			}
		
		if(blp != null) getCurrentSession().delete(blp);
		if(bldt != null) getCurrentSession().delete(bldt);
		getCurrentSession().delete(bl);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BinhLuan> listBinhLuan(int maDt) {
		List<BinhLuanDt> binhLuanDts = getCurrentSession().createQuery("From BinhLuanDt Where MA_DT = " + maDt).list();
		System.out.println("dien thoai co " + binhLuanDts.size() + " binh luan");
		List<BinhLuan> binhLuans = new ArrayList<BinhLuan>();
		for(int i=0;i<binhLuanDts.size();i++){
			BinhLuan binhLuan = getBinhLuan(binhLuanDts.get(i).getMaBl());
			binhLuans.add(binhLuan);
			//List<BlPhu> blPhus = getCurrentSession().createQuery("From BlPhu Where Ma_BL = " + binhLuan.getMaBl()).list();
		}
		return binhLuans;
	}

}
