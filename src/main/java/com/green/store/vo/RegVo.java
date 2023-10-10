package com.green.store.vo;

public class RegVo {
   private int s_no;
   private int w_no;
   private String w_name;
   private String w_location;
   private String w_vintage;
   private String w_kind;
   private String w_image;
   private String w_wineery;
   private int w_amount;
   private int w_price;
   private int wl_idx;
   public RegVo() {}
   public RegVo(int s_no, int w_no, String w_name, String w_location, String w_vintage, String w_kind, String w_image,
         String w_wineery, int w_amount, int w_price, int wl_idx) {
      this.s_no = s_no;
      this.w_no = w_no;
      this.w_name = w_name;
      this.w_location = w_location;
      this.w_vintage = w_vintage;
      this.w_kind = w_kind;
      this.w_image = w_image;
      this.w_wineery = w_wineery;
      this.w_amount = w_amount;
      this.w_price = w_price;
      this.wl_idx = wl_idx;
   }
   public int getS_no() {
      return s_no;
   }
   public void setS_no(int s_no) {
      this.s_no = s_no;
   }
   public int getW_no() {
      return w_no;
   }
   public void setW_no(int w_no) {
      this.w_no = w_no;
   }
   public String getW_name() {
      return w_name;
   }
   public void setW_name(String w_name) {
      this.w_name = w_name;
   }
   public String getW_location() {
      return w_location;
   }
   public void setW_location(String w_location) {
      this.w_location = w_location;
   }
   public String getW_vintage() {
      return w_vintage;
   }
   public void setW_vintage(String w_vintage) {
      this.w_vintage = w_vintage;
   }
   public String getW_kind() {
      return w_kind;
   }
   public void setW_kind(String w_kind) {
      this.w_kind = w_kind;
   }
   public String getW_image() {
      return w_image;
   }
   public void setW_image(String w_image) {
      this.w_image = w_image;
   }
   public String getW_wineery() {
      return w_wineery;
   }
   public void setW_wineery(String w_wineery) {
      this.w_wineery = w_wineery;
   }
   public int getW_amount() {
      return w_amount;
   }
   public void setW_amount(int w_amount) {
      this.w_amount = w_amount;
   }
   public int getW_price() {
      return w_price;
   }
   public void setW_price(int w_price) {
      this.w_price = w_price;
   }
   public int getWl_idx() {
      return wl_idx;
   }
   public void setWl_idx(int wl_idx) {
      this.wl_idx = wl_idx;
   }
   @Override
   public String toString() {
      return "RegVo [s_no=" + s_no + ", w_no=" + w_no + ", w_name=" + w_name + ", w_location=" + w_location
            + ", w_vintage=" + w_vintage + ", w_kind=" + w_kind + ", w_image=" + w_image + ", w_wineery="
            + w_wineery + ", w_amount=" + w_amount + ", w_price=" + w_price + ", wl_idx=" + wl_idx + "]";
   }
}