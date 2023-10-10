package com.green.store.vo;

public class HavingWineVo {
	
	private int s_no;
	private String s_name;
	private int w_no;
	private String w_name;
	private String w_vintage;
	private String w_location;
	private String w_kind;
	private int    wl_idx;
	private int    w_amount;
	private int    w_price;
	
	public HavingWineVo() {}
	public HavingWineVo(int s_no, String s_name, int w_no, String w_name, String w_vintage, String w_location,
			String w_kind, int wl_idx, int w_amount, int w_price) {
		this.s_no = s_no;
		this.s_name = s_name;
		this.w_no = w_no;
		this.w_name = w_name;
		this.w_vintage = w_vintage;
		this.w_location = w_location;
		this.w_kind = w_kind;
		this.wl_idx = wl_idx;
		this.w_amount = w_amount;
		this.w_price = w_price;
	}
	public synchronized int getS_no() {
		return s_no;
	}
	public synchronized void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public synchronized String getS_name() {
		return s_name;
	}
	public synchronized void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public synchronized int getW_no() {
		return w_no;
	}
	public synchronized void setW_no(int w_no) {
		this.w_no = w_no;
	}
	public synchronized String getW_name() {
		return w_name;
	}
	public synchronized void setW_name(String w_name) {
		this.w_name = w_name;
	}
	public synchronized String getW_vintage() {
		return w_vintage;
	}
	public synchronized void setW_vintage(String w_vintage) {
		this.w_vintage = w_vintage;
	}
	public synchronized String getW_location() {
		return w_location;
	}
	public synchronized void setW_location(String w_location) {
		this.w_location = w_location;
	}
	public synchronized String getW_kind() {
		return w_kind;
	}
	public synchronized void setW_kind(String w_kind) {
		this.w_kind = w_kind;
	}
	public synchronized int getWl_idx() {
		return wl_idx;
	}
	public synchronized void setWl_idx(int wl_idx) {
		this.wl_idx = wl_idx;
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
	@Override
	public String toString() {
		return "HavingWineVo [s_no=" + s_no + ", s_name=" + s_name + ", w_no=" + w_no + ", w_name=" + w_name
				+ ", w_vintage=" + w_vintage + ", w_location=" + w_location + ", w_kind=" + w_kind + ", wl_idx="
				+ wl_idx + ", w_amount=" + w_amount + ", w_pirce=" + w_price + "]";
	}
	
	
	
}
