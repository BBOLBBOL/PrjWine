package com.green.store.vo;

public class WineListVo {
	
	
	private int w_no;
	private int w_amount;
	private int w_price;
	private int s_no;
	
	public WineListVo() {}
	public WineListVo(int w_no, int w_amount, int w_price, int s_no) {
		this.w_no = w_no;
		this.w_amount = w_amount;
		this.w_price = w_price;
		this.s_no = s_no;
		
	}
	public synchronized int getW_no() {
		return w_no;
	}
	public synchronized void setW_no(int w_no) {
		this.w_no = w_no;
	}
	public synchronized int getW_amount() {
		return w_amount;
	}
	public synchronized void setW_amount(int w_amount) {
		this.w_amount = w_amount;
	}
	public synchronized int getW_price() {
		return w_price;
	}
	public synchronized void setW_price(int w_price) {
		this.w_price = w_price;
	}
	public synchronized int getS_no() {
		return s_no;
	}
	public synchronized void setS_no(int s_no) {
		this.s_no = s_no;
	}
	@Override
	public String toString() {
		return "StoreListVo [w_no=" + w_no + ", w_amount=" + w_amount + ", w_price=" + w_price + ", s_no=" + s_no + "]";
	}
	
	
	
}
