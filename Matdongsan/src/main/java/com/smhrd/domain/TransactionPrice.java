package com.smhrd.domain;

public class TransactionPrice {

	private String TP_name;
	private String TP_addr;
	private String TP_addr2;
	private String TP_made;
	private String TP_area;
	private String TP_price;
	private String TP_year;
	 
	public TransactionPrice(String tP_name, String tP_addr, String tP_addr2, String tP_made, String tP_area,
			String tP_price, String tP_year) {
		super();
		TP_name = tP_name;
		TP_addr = tP_addr;
		TP_addr2 = tP_addr2;
		TP_made = tP_made;
		TP_area = tP_area;
		TP_price = tP_price;
		TP_year = tP_year;
	}

	public String getTP_name() {
		return TP_name;
	}

	public void setTP_name(String tP_name) {
		TP_name = tP_name;
	}

	public String getTP_addr() {
		return TP_addr;
	}

	public void setTP_addr(String tP_addr) {
		TP_addr = tP_addr;
	}

	public String getTP_addr2() {
		return TP_addr2;
	}

	public void setTP_addr2(String tP_addr2) {
		TP_addr2 = tP_addr2;
	}

	public String getTP_made() {
		return TP_made;
	}

	public void setTP_made(String tP_made) {
		TP_made = tP_made;
	}

	public String getTP_area() {
		return TP_area;
	}

	public void setTP_area(String tP_area) {
		TP_area = tP_area;
	}

	public String getTP_price() {
		return TP_price;
	}

	public void setTP_price(String tP_price) {
		TP_price = tP_price;
	}

	public String getTP_year() {
		return TP_year;
	}

	public void setTP_year(String tP_year) {
		TP_year = tP_year;
	}
	
	
}
