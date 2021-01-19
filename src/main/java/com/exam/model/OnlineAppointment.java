package com.exam.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class OnlineAppointment implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	String pName;
	String pEmail;
	String pAge;
	String pGender;
	String pAddress;
	String pDepertment;
	String pDoctor;
	int token;
	
	
	
	
	

	public int getToken() {
		return token;
	}



	public void setToken(int token) {
		this.token = token;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getpName() {
		return pName;
	}



	public void setpName(String pName) {
		this.pName = pName;
	}



	public String getpEmail() {
		return pEmail;
	}



	public void setpEmail(String pEmail) {
		this.pEmail = pEmail;
	}



	public String getpAge() {
		return pAge;
	}



	public void setpAge(String pAge) {
		this.pAge = pAge;
	}



	public String getpGender() {
		return pGender;
	}



	public void setpGender(String pGender) {
		this.pGender = pGender;
	}



	public String getpAddress() {
		return pAddress;
	}



	public void setpAddress(String pAddress) {
		this.pAddress = pAddress;
	}



	public String getpDepertment() {
		return pDepertment;
	}



	public void setpDepertment(String pDepertment) {
		this.pDepertment = pDepertment;
	}



	public String getpDoctor() {
		return pDoctor;
	}



	public void setpDoctor(String pDoctor) {
		this.pDoctor = pDoctor;
	}



	@Override
	public String toString() {
		return "OnlineAppointment [pName=" + pName + ", pEmail=" + pEmail + ", pAge=" + pAge + ", pGender=" + pGender
				+ ", pAddress=" + pAddress + ", pDepertment=" + pDepertment + ", pDoctor=" + pDoctor + "]";
	}
	
	
}
