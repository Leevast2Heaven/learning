package com.neusoft.it.entity;

import java.util.Date;
//id是客户id
public class custom {
	private int id;
	private String cusName;
	private String cusTel;
	private String cusPhoto;
	private String cusSex;
	private String cusGrade;
	private String cusSchool;
	private Date cusBirthday;
	private String cusPwd;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getCusName() {
		return cusName;
	}
	public void setCusName(String cusName) {
		this.cusName = cusName;
	}
	public String getCusTel() {
		return cusTel;
	}
	public void setCusTel(String cusTel) {
		this.cusTel = cusTel;
	}
	public String getCusPhoto() {
		return cusPhoto;
	}
	public void setCusPhoto(String cusPhoto) {
		this.cusPhoto = cusPhoto;
	}
	public String getCusSex() {
		return cusSex;
	}
	public void setCusSex(String cusSex) {
		this.cusSex = cusSex;
	}
	public String getCusGrade() {
		return cusGrade;
	}
	public void setCusGrade(String cusGrade) {
		this.cusGrade = cusGrade;
	}
	public String getCusSchool() {
		return cusSchool;
	}
	public void setCusSchool(String cusSchool) {
		this.cusSchool = cusSchool;
	}
	public Date getCusBirthday() {
		return cusBirthday;
	}
	public void setCusBirthday(Date cusBirthday) {
		this.cusBirthday = cusBirthday;
	}
	public String getCusPwd() {
		return cusPwd;
	}
	public void setCusPwd(String cusPwd) {
		this.cusPwd = cusPwd;
	}
	
}
