package com.neusoft.it.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class subject {
	private int classId;
	private String className;
	private String subjects;
	private Float tuition;
	private int teaId;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date startDate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date endDate;
	private int totalHours;
	private String classStatu;
	private Date apprTime;
	
	private String teaName;
	private String teaPhoto;
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
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
	public int getTeaId() {
		return teaId;
	}
	public void setTeaId(int teaId) {
		this.teaId = teaId;
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
	public String getTeaName() {
		return teaName;
	}
	public void setTeaName(String teaName) {
		this.teaName = teaName;
	}
	public String getTeaPhoto() {
		return teaPhoto;
	}
	public void setTeaPhoto(String teaPhoto) {
		this.teaPhoto = teaPhoto;
	}
	
}