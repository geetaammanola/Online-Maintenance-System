package com.serv.web.modal;

public class emp {

	private int e_id;
	private String e_name;
	private String e_email;
	private String e_designation;

	private String e_address;
	private int e_mobileNo;

	
	public int getE_id() {
		return e_id;
	}


	public void setE_id(int e_id) {
		this.e_id = e_id;
	}


	public String getE_name() {
		return e_name;
	}


	public void setE_name(String e_name) {
		this.e_name = e_name;
	}


	public String getE_email() {
		return e_email;
	}


	public void setE_email(String e_email) {
		this.e_email = e_email;
	}


	public String getE_designation() {
		return e_designation;
	}


	public void setE_designation(String e_designation) {
		this.e_designation = e_designation;
	}


	public String getE_address() {
		return e_address;
	}


	public void setE_address(String e_address) {
		this.e_address = e_address;
	}


	public int getE_mobileNo() {
		return e_mobileNo;
	}


	public void setE_mobileNo(int mobileNo) {
		this.e_mobileNo = mobileNo;
	}


	@Override
	public String toString() {
		return "emp [e_id=" + e_id + ", e_name=" + e_name + ", e_email=" + e_email + ", e_designation=" + e_designation
				+ ", e_address=" + e_address + ", e_mobileNo=" + e_mobileNo + "]";
	}

}
