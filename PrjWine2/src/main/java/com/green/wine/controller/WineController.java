package com.green.wine.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.user.service.UserService;

@Controller
public class WineController {
//	@Autowired
//	private  StoreService   storeService;
	
	//와인리스트 페이지 이동
	@RequestMapping("/WineList")
	public String winelist() {
		return "/wine/winelist";
	}

	//와인정보 페이지 이동	
	@RequestMapping("/WineInfo")
	public String wineinfo() {
		return "/wine/wineinfo";
	}
	
	//와인 등록 페이지 이동
	@RequestMapping("/WineJoinForm")
	public String winejoin() {
		
		return "/wine/winejoinform";
	}
	
}
