package com.green.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.store.service.StoreService;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineListVo;



@Controller
public class StoreController {
	@Autowired
	private  StoreService storeService;
	
	//매장리스트
	@RequestMapping("/StoreList")
	public String storelist() {
		return "/store/storelist";
	}
	//매장정보
	@RequestMapping("/Storegoinfo")
	public String storegoinfo() {
		return "/store/storeinfo";
	}

	//판매기록 이동
	@RequestMapping("/Store/SalesHistory")
	public String saleshistory() {
				return "/store/saleshistory";
	}
	 
	//매장 정보 확인 페이지 이동
	@RequestMapping("/StoreCheck")
	public String storecheck() {
		return "/store/storecheck";
	}
	
	//매장 정보 수정 페이지 이동
	@RequestMapping("/StoreUpdateForm")
	public String storeupdateform() {
		return "/store/storeupdateform";
	}
}
