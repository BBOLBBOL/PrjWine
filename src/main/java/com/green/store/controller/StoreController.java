package com.green.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.user.service.UserService;

@Controller
public class StoreController {
//	@Autowired
//	private  StoreService   storeService;
	
	@RequestMapping("/StoreList")
	public String storelist() {
		return "/store/storelist";
	}
	
	@RequestMapping("/Storegoinfo")
	public String storegoinfo() {
		return "/store/storeinfo";
	}
}
