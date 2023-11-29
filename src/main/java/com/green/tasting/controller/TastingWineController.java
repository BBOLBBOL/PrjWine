package com.green.tasting.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.green.pds.vo.PdsPagingVo;
import com.green.store.vo.RegVo;
import com.green.tasting.service.TastingService;
import com.green.tasting.vo.TastingVo;

@Controller
public class TastingWineController {
	@Autowired
	private TastingService tastingService;
	
	// 시음회 정보
	@RequestMapping("/TastingList")
	public ModelAndView tastingList(TastingVo vo, PdsPagingVo pds,
			 @RequestParam(value = "nowPage", required = false) String nowPage,
			 @RequestParam(value="cntPerPage", required = false)String cntPerPage
			) {
		
		int total  =  tastingService.countTasting();
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "8";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "8";
		}
		
		pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		List<TastingVo> tastList2 = tastingService.getTastList2(pds);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("tastList", tastList2);
		mv.addObject("pds", pds);
		mv.setViewName("/tasting/tastinglist");
		return mv;
	}

	// 시음회 등록 화면
	@RequestMapping("/TastingWriteForm")
	public ModelAndView TastingWriteForm(TastingVo vo ){
	
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);
		mv.setViewName("/tasting/tastingwrite");
		return mv;
	}

	// 시음회 등록
	@RequestMapping("/TastingWrite")
	public ModelAndView TastingWrite(TastingVo vo){
	    System.out.println("vo : " + vo);
		tastingService.insertTaste(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);
		mv.setViewName("redirect:/TastingList");
		return mv;
	}
	

	// 신청한 시음회
	@RequestMapping("/UserTasting")
	public ModelAndView UserTasting(TastingVo vo) {
		List<TastingVo> usertasting = tastingService.getUserTasting(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("usertasting", usertasting);
		mv.setViewName("/tasting/usertasting");
		
		return mv;
	}
	
	// ajax 호출의 대상	
	@RequestMapping("/Tasting/WineList")
	@ResponseBody
	public  List<RegVo>  tastingWineList(@RequestParam HashMap<String, Object> map) {
		List<RegVo> searchList = tastingService.searchList(map);
		return searchList;
	}
	
	@RequestMapping("/TastingBoard")
	public ModelAndView tastingboard(TastingVo vo, @RequestParam("t_idx")int t_idx){
		List<TastingVo> tastingBoard = tastingService.tastingBoard(vo);
		
		// 신청인원
		int count  =  tastingService.requestCount(t_idx);
		System.out.println(count);
		ModelAndView mv = new ModelAndView();
		mv.addObject("tastingBoard", tastingBoard);
		mv.setViewName("/tasting/tastingboard");
		mv.addObject("count", count);
	    
		return mv;
	}
	@RequestMapping("/TastingListDelete")
	public ModelAndView tastingListDelete(TastingVo vo) {
		tastingService.deleteTaste( vo );
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/TastingList");
		return mv;
	}
		
	@ResponseBody
	@RequestMapping("/UserTastingDelete")
	 public int tastDelete(@RequestParam(value = "valueArr[]") String[] valueArr, TastingVo vo ) {
        
        for(String value : valueArr) {
           vo.setT_idx(Integer.parseInt(value));
           tastingService.deleteTasting(vo);
            
        }
        return 1;
  }
	
	@RequestMapping("UserTastingRequest")
	public ModelAndView userTastingRequest(TastingVo vo) {
		
		tastingService.tastingRequest(vo);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("redirect:/TastingList");
		return mv;
	}
	
	@RequestMapping("TastingRequestList")
	public ModelAndView tastingRequestList(TastingVo vo) {		
		
		List<TastingVo> requestList  =  tastingService.requestList(vo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("tasting/tastingrequestlist");
		mv.addObject("requestList", requestList);
		
		return mv;
	}
	
}














