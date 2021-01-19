package com.exam.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class CreateUser implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	String Uname;
	String Uemail;
	String Uage;
	String Ugender;
	String Ucontact;
	String Upassword;
	String Uaddress;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUname() {
		return Uname;
	}
	public void setUname(String uname) {
		Uname = uname;
	}
	public String getUemail() {
		return Uemail;
	}
	public void setUemail(String uemail) {
		Uemail = uemail;
	}
	public String getUage() {
		return Uage;
	}
	public void setUage(String uage) {
		Uage = uage;
	}
	public String getUgender() {
		return Ugender;
	}
	public void setUgender(String ugender) {
		Ugender = ugender;
	}
	public String getUcontact() {
		return Ucontact;
	}
	public void setUcontact(String ucontact) {
		Ucontact = ucontact;
	}
	public String getUpassword() {
		return Upassword;
	}
	public void setUpassword(String upassword) {
		Upassword = upassword;
	}
	public String getUaddress() {
		return Uaddress;
	}
	public void setUaddress(String uaddress) {
		Uaddress = uaddress;
	}
	
	
}
