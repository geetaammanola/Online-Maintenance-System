package com.serv.web.modal;

import java.util.Date;

public class Employee {

	private int eid;
	private String role;
	private String name;
	private Date doj;
	private String email;
	private int mobileNo;
	private String address;
	private Date dob;

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(int mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	
	public Date getDob() {
        return dob;
    }
    public void setDob(Date dob) {
        this.dob = dob;
    }
    
    
	

	public Date getDoj() {
		return doj;
	}

	public void setDoj(Date doj) {
		this.doj =  doj;
	}

	
	@Override
	public String toString() {
		return "employee [eid=" + eid + ", role=" + role + ", name=" + name + ", doj=" + doj + ", email=" + email
				+ ", mobileNo=" + mobileNo + ", address=" + address + ", dob=" + dob + "]";
	}
/*
	public String getDoj() {
		return doj;
	}

	public void setDoj(String doj) {
		this.doj = doj;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}
*/
	

}
