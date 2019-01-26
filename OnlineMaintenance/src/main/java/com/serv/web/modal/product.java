package com.serv.web.modal;

public class product {
	private int pid;
	private String pname;
	private int stock;
	
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	
	
	@Override
	public String toString() {
		return "product [pid=" + pid + ", pname=" + pname + ", stock=" + stock + "]";
	}
	
	
	

}
