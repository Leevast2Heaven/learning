package com.neusoft.it.entity;

import java.util.Date;

public class complaint {
	private int comId;
	private int id;	
	private int classId;
	private String reason;
	private String request;
	private String comTime;
	private String reqTime;
	
	private String cusName;
	private String cusTel;
	private String cusPhoto;
	private String cusSex;
	private String cusGrade;
	private String cusSchool;
	private Date cusBirthday;
	private String cusPwd;
	private String className;
	private String subjects;
	private Float tuition;
	private String teacher;
	private Date startDate;
	private Date endDate;
	private int totalHours;
	private String classStatu;
	private Date apprTime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public int getComId() {
		return comId;
	}
	public void setComId(int comId) {
		this.comId = comId;
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
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public String getComTime() {
		return comTime;
	}
	public void setComTime(String comTime) {
		this.comTime = comTime;
	}
	public String getReqTime() {
		return reqTime;
	}
	public void setReqTime(String reqTime) {
		this.reqTime = reqTime;
	}
}
