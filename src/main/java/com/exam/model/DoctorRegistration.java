package com.exam.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class DoctorRegistration implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long id;
	private String dname;
	private String demail;
	private String dept;
	private String regiNo;
	private String qualification;
	private String designation;
	private String visitHour;
	private String roomNo;
	private String dpass;
	private String username;
	private String img;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getDemail() {
		return demail;
	}
	public void setDemail(String demail) {
		this.demail = demail;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getRegiNo() {
		return regiNo;
	}
	public void setRegiNo(String regiNo) {
		this.regiNo = regiNo;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getVisitHour() {
		return visitHour;
	}
	public void setVisitHour(String visitHour) {
		this.visitHour = visitHour;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public String getDpass() {
		return dpass;
	}
	public void setDpass(String dpass) {
		this.dpass = dpass;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	@Override
	public String toString() {
		return "DoctorRegistration [id=" + id + ", dname=" + dname + ", demail=" + demail + ", dept=" + dept
				+ ", regiNo=" + regiNo + ", qualification=" + qualification + ", designation=" + designation
				+ ", visitHour=" + visitHour + ", roomNo=" + roomNo + ", dpass=" + dpass + ", username=" + username
				+ "]";
	}
	
	
}
