package com.neusoft.it.entity;

import java.util.Date;
//id是客户id
public class attend {
	private int att_id;
	private int id;
	private int classId;
	private Date date;
	private String check;
	//fubiao cus
	private String cusName;
	private String cusTel;
	private String cusPhoto;
	private String cusSex;
	private String cusGrade;
	private String cusSchool;
	private Date cusBirthday;
	private String cusPwd;
	//subjects
	private String className;
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getSubjects() {
		return subjects;
	}
	public void setSubjects(String subjects) {
		this.subjects = subjects;
	}
	public Float getTuition() {
		return tuition;
	}
	public void setTuition(Float tuition) {
		this.tuition = tuition;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public int getTotalHours() {
		return totalHours;
	}
	public void setTotalHours(int totalHours) {
		this.totalHours = totalHours;
	}
	public String getClassStatu() {
		return classStatu;
	}
	public void setClassStatu(String classStatu) {
		this.classStatu = classStatu;
	}
	public Date getApprTime() {
		return apprTime;
	}
	public void setApprTime(Date apprTime) {
		this.apprTime = apprTime;
	}
	private String subjects;
	private Float tuition;
	private String teacher;
	private Date startDate;
	private Date endDate;
	private int totalHours;
	private String classStatu;
	private Date apprTime;
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
	public int getAtt_id() {
		return att_id;
	}
	public void setAtt_id(int att_id) {
		this.att_id = att_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getCheck() {
		return check;
	}
	public void setCheck(String check) {
		this.check = check;
	}
	
	
}
