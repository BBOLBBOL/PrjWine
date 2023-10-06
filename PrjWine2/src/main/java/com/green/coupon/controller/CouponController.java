package com.green.coupon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CouponController {

	 // 쿠폰발매 페이지이동
	 @RequestMapping("CouponForm")
	 public String couponform() {
		 return "/coupon/couponform";
	 }
}
