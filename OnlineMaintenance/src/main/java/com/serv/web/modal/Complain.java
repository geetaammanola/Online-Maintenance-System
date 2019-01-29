package com.serv.web.modal;

import java.util.Date;

public class Complain {

	private int complainid;
	private String complainer;
	private String email;
	private int mobileNo;
	private Date date;
	private String address;
	private String category;
	private String Description;

	public int getComplainid() {
		return complainid;
	}

	public void setComplainid(int complainid) {
		this.complainid = complainid;
	}

	public String getComplainer() {
		return complainer;
	}

	public void setComplainer(String complainer) {
		this.complainer = complainer;
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
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	@Override
	public String toString() {
		return "complain [complainid=" + complainid + ", complainer=" + complainer + ", email=" + email + ", mobileNo="
				+ mobileNo + ", date=" + date + ", address=" + address + ", category=" + category + ", Description="
				+ Description + "]";
	}

}
