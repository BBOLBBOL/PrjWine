package com.green.wine.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.WineVo;
import com.green.user.service.UserService;
import com.green.wine.service.WineService;

@Controller
public class WineController {
	
	@Autowired
	private WineService wineService;
	
	
	//와인리스트 페이지 이동
	@RequestMapping("/WineList")
	public String winelist() {
		return "/wine/winelist";
	}

	//와인정보 페이지 이동	
	@RequestMapping("/WineInfo")
	public ModelAndView wineinfo(WineVo vo, HavingWineVo store) {
		
		// 보유한 주변 매장 찾기
		List<HavingWineVo> storeList  =  wineService.getStoreList(store);
		
		// 와인별 정보 보기 
		List<WineVo> wineInfo  =  wineService.getWineInfo(vo);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("/wine/wineinfo");
		mv.addObject("wineInfo", wineInfo);
		mv.addObject("storeList", storeList);
		
		
		return mv;
	}
	
	//와인 등록 페이지 이동
	@RequestMapping("/WineJoinForm")
	public String winejoin() {
		
		return "/wine/winejoinform";
	}
	
}
