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

@Controller
public class StoreWineController {

	@Autowired
	private StoreService storeService;

	// 와인 리스트 (임규)
	@RequestMapping("/StoreWineManage")
	public ModelAndView storewinemanage(StoreVo vo) {
		List<HavingWineVo> wineList = storeService.getWineList(vo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/store/storewinemanage");
		mv.addObject("wineList", wineList);
		return mv;
	}

	// 와인 수정 화면 (임규)
	@RequestMapping("/WineUpdateForm")
	public ModelAndView windUpdateForm(StoreVo vo) {
		// 정보 조회
		List<HavingWineVo> wineList = storeService.getWineList(vo);
		System.out.println(wineList);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/store/storewineupdate");
		mv.addObject("wineList", wineList);
		return mv;
	}

	// 와인 수정 기능 (임규)
	@RequestMapping("/WineUpdate")
	public ModelAndView wineUpdate(HavingWineVo havingVo) {

		storeService.updateWineList(havingVo);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/StoreWineManage");

		return mv;
	}

	// Wine 데이터 삭제 (임규)
	@RequestMapping("/WineDelete")
	public String wineDelete() {
		return "redirect:/StoreWineManage";
	}

	// 와인등록 (영태)
	@RequestMapping("/StoreWineRegister")
	public ModelAndView storewineregister(RegVo vo) {

		storeService.insertSearch(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);
		mv.setViewName("redirect:/store/storewinemanage");
		return mv;
	}

	// 와인등록폼 (영태)
	@RequestMapping("/StoreWineRegisterForm")
	public String storewineregisterform() {
		return "/store/storewineregisterform";
	}

	// 와인검색 (영태)
	@RequestMapping("/StoreWineSearch")
	public ModelAndView searchWine(RegVo vo) {
		List<RegVo> searchList = storeService.getSearchList(vo);

		ModelAndView mv = new ModelAndView();
		mv.addObject("searchList", searchList);
		mv.setViewName("/store/storewineregisterform");

		System.out.println(mv);
		return mv;
	}

}
