package com.nienluan.htbldt.model;

import java.util.ArrayList;
import java.util.List;

public class ItemBinhLuan {
	BinhLuan binhLuan;
	List<BinhLuan> listBlCon = new ArrayList<BinhLuan>();
	
	public ItemBinhLuan() {
		// TODO Auto-generated constructor stub
	}

	public BinhLuan getBinhLuan() {
		return binhLuan;
	}

	public void setBinhLuan(BinhLuan binhLuan) {
		this.binhLuan = binhLuan;
	}

	public List<BinhLuan> getListBlCon() {
		return listBlCon;
	}

	public void setListBlCon(List<BinhLuan> listBlCon) {
		this.listBlCon = listBlCon;
	}
	
	public void addBlCon(BinhLuan bl){
		listBlCon.add(bl);
	}

	@Override
	public String toString() {
		return "ItemBinhLuan [binhLuan=" + binhLuan + ", listBlCon="
				+ listBlCon + "]";
	}
	
	
}
