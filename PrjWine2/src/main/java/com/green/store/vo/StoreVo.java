package com.green.store.vo;

public class StoreVo {
	// Field
	private int     s_no;
	private String  s_id;
	private String  s_pw;
	private String  s_name;
	private String  s_sn;
	private String  s_si;
	private String  s_gu;
	private String  s_phone;
	private String  s_cont;
	private String  s_img;
	
	// Consructor
	public StoreVo() {}
	public StoreVo(int s_no, String s_id, String s_pw, String s_name, String s_sn, String s_si, String s_gu,
			String s_phone, String s_cont, String s_img) {
		super();
		this.s_no = s_no;
		this.s_id = s_id;
		this.s_pw = s_pw;
		this.s_name = s_name;
		this.s_sn = s_sn;
		this.s_si = s_si;
		this.s_gu = s_gu;
		this.s_phone = s_phone;
		this.s_cont = s_cont;
		this.s_img = s_img;
	}
	
	// Getter/Setter
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getS_pw() {
		return s_pw;
	}
	public void setS_pw(String s_pw) {
		this.s_pw = s_pw;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_sn() {
		return s_sn;
	}
	public void setS_sn(String s_sn) {
		this.s_sn = s_sn;
	}
	public String getS_si() {
		return s_si;
	}
	public void setS_si(String s_si) {
		this.s_si = s_si;
	}
	public String getS_gu() {
		return s_gu;
	}
	public void setS_gu(String s_gu) {
		this.s_gu = s_gu;
	}
	public String getS_phone() {
		return s_phone;
	}
	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}
	public String getS_cont() {
		return s_cont;
	}
	public void setS_cont(String s_cont) {
		this.s_cont = s_cont;
	}
	public String getS_img() {
		return s_img;
	}
	public void setS_img(String s_img) {
		this.s_img = s_img;
	}
	
	@Override
	public String toString() {
		return "StoreVo [s_no=" + s_no + ", s_id=" + s_id + ", s_pw=" + s_pw + ", s_name=" + s_name + ", s_sn=" + s_sn
				+ ", s_si=" + s_si + ", s_gu=" + s_gu + ", s_phone=" + s_phone + ", s_cont=" + s_cont + ", s_img="
				+ s_img + "]";
	}
	
	
	
	

}