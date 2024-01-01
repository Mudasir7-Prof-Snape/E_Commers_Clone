package com.ecommers.product;

public class Product {
	int pid;
	String pdesc;
	String pname;
	int pprice;
	public Product(int pid, String pdesc, String pname, int pprice) {
		super();
		this.pid = pid;
		this.pdesc = pdesc;
		this.pname = pname;
		this.pprice = pprice;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
}
