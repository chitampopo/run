package com.nienluan.htbldt.model;

public class ChuoiTimKiem {
	private String value;

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public ChuoiTimKiem(String value) {
		super();
		this.value = value;
	}

	public ChuoiTimKiem() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "ChuoiTimKiem [value=" + value + "]";
	}
	
}
