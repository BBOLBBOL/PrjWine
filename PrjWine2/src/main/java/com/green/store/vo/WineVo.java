package com.green.store.vo;

public class WineVo {
	
	private int w_no;
	private String w_winery;
	private String w_name;
	private String w_reviews;
	private String w_average;
	private String w_location;
	private String w_image;
	private String w_vintage;
	private String w_kind;
	
	public WineVo() {}
	public WineVo(int w_no, String w_winery, String w_name, String w_reviews, String w_average, String w_location,
			String w_image, String w_vintage, String w_kind) {
		this.w_no = w_no;
		this.w_winery = w_winery;
		this.w_name = w_name;
		this.w_reviews = w_reviews;
		this.w_average = w_average;
		this.w_location = w_location;
		this.w_image = w_image;
		this.w_vintage = w_vintage;
		this.w_kind = w_kind;
	}
	public synchronized int getW_no() {
		return w_no;
	}
	public synchronized void setW_no(int w_no) {
		this.w_no = w_no;
	}
	public synchronized String getW_winery() {
		return w_winery;
	}
	public synchronized void setW_winery(String w_winery) {
		this.w_winery = w_winery;
	}
	public synchronized String getW_name() {
		return w_name;
	}
	public synchronized void setW_name(String w_name) {
		this.w_name = w_name;
	}
	public synchronized String getW_reviews() {
		return w_reviews;
	}
	public synchronized void setW_reviews(String w_reviews) {
		this.w_reviews = w_reviews;
	}
	public synchronized String getW_average() {
		return w_average;
	}
	public synchronized void setW_average(String w_average) {
		this.w_average = w_average;
	}
	public synchronized String getW_location() {
		return w_location;
	}
	public synchronized void setW_location(String w_location) {
		this.w_location = w_location;
	}
	public synchronized String getW_image() {
		return w_image;
	}
	public synchronized void setW_image(String w_image) {
		this.w_image = w_image;
	}
	public synchronized String getW_vintage() {
		return w_vintage;
	}
	public synchronized void setW_vintage(String w_vintage) {
		this.w_vintage = w_vintage;
	}
	public synchronized String getW_kind() {
		return w_kind;
	}
	public synchronized void setW_kind(String w_kind) {
		this.w_kind = w_kind;
	}
	
	@Override
	public String toString() {
		return "WineVo [w_no=" + w_no + ", w_winery=" + w_winery + ", w_name=" + w_name + ", w_reviews=" + w_reviews
				+ ", w_average=" + w_average + ", w_location=" + w_location + ", w_image=" + w_image + ", w_vintage="
				+ w_vintage + ", w_kind=" + w_kind + "]";
	}
	
}
