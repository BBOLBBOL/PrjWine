package com.green.store.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.pds.vo.PdsPagingVo;
import com.green.store.service.StoreService;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;


@Controller
public class StoreWineController {

   @Autowired
   private StoreService storeService;
   
   // 와인 리스트 조회 
   @RequestMapping("/StoreListSearch")
   public ModelAndView storeListSearch(   HavingWineVo vo,    
         @RequestParam("searchKeyword") String searchKeyword, 
         @RequestParam("searchOption")  String searchOption,
         HttpSession session) {
      
      int s_no  =  vo.getS_no();
      String w_kind  =  vo.getW_kind();
      List<RegVo> storeListSearch  =  storeService.getStoreListSearch( s_no, w_kind, searchKeyword, searchOption);
      
      
      ModelAndView mv  =  new ModelAndView();
      mv.setViewName("store/storewinemanage");
      mv.addObject("storeListSearch", storeListSearch);
      mv.addObject("s_no", s_no);
      mv.addObject("w_kind", w_kind);	
      return mv;
   }
   
   // 와인 리스트 (임규)
   @RequestMapping("/StoreWineManage")
   public ModelAndView storewinemanage(HavingWineVo vo,
		   PdsPagingVo pds,
		   @RequestParam(value = "nowPage", required = false) String nowPage,
		   @RequestParam(value="cntPerPage", required = false)String cntPerPage
		   ) {
      
      String s_name  =  vo.getS_name();
      int s_no       =  vo.getS_no();
      int wl_idx       =  vo.getWl_idx();
      
      
      int total  =  storeService.countManage(vo);
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "8";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "8";
		}
		
	  
      pds  =  new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
      
      
      int w_amount  =  vo.getW_amount();  
      
      // 각 매장별 보유 와인 조회
      List<HavingWineVo> wineList = storeService.getWineList(vo);
      
      
      List<HavingWineVo> wineList2 = storeService.wineList2(pds,s_no);
      
      System.out.println(wineList2);
      System.out.println(w_amount);
      ModelAndView mv = new ModelAndView();
      mv.setViewName("store/storewinemanage");
      mv.addObject("wineList", wineList2);
      mv.addObject("s_name", s_name);
      mv.addObject("wl_idx", wl_idx);
      mv.addObject("s_no", s_no);
      mv.addObject("pds", pds);
      
      
      
      return mv;
   }

   // 와인 수정 화면 (임규)
   @RequestMapping("/WineUpdateForm")
   public ModelAndView windUpdateForm(HavingWineVo vo) {

      int idx = vo.getWl_idx();

      int s_no = vo.getS_no();

      List<HavingWineVo> selectList = storeService.selectList(vo);
      System.out.println("선택한 와인 정보" + selectList);

      ModelAndView mv = new ModelAndView();
      mv.setViewName("/store/storewineupdate");
      mv.addObject("selectList", selectList);
      mv.addObject("idx", idx);
      mv.addObject("s_no", s_no);

      return mv;
   }

   // 와인 수정 기능 (임규)
   @RequestMapping("/WineUpdate")
   public ModelAndView wineUpdate(HavingWineVo havingVo) {

      storeService.updateWineList(havingVo);
      System.out.println(havingVo);

      ModelAndView mv = new ModelAndView();
      mv.setViewName("redirect:/StoreWineManage?s_no=" + havingVo.getS_no());

      return mv;
   }

   // Wine 데이터 삭제 (임규)
   @RequestMapping("/WineDelete")
   public String wineDelete(HavingWineVo havingVo) {

      storeService.deleteWineList(havingVo);

      return "redirect:/StoreWineManage?s_no=" + havingVo.getS_no();
   }

   // 와인검색 (영태)
   @RequestMapping("/StoreWineSearch")
   public ModelAndView winesearch(@RequestParam("searchKeyword") String searchKeyword
         ,@RequestParam("searchOption") String searchOption
         ,@RequestParam("kindOption") String kindOption
         ) {
	   
      List<RegVo> searchList = storeService.searchList(searchKeyword, searchOption, kindOption);
      ModelAndView mv = new ModelAndView();
      
      mv.addObject("searchList", searchList);
      mv.setViewName("/store/storewineregisterform");
      return mv;
   }
   
   // 와인등록폼 (영태)
      @RequestMapping("/StoreWineRegisterForm")
      public String storewineregisterform() {
         return "/store/storewineregisterform";
      }
   
   // 와인등록 (영태)
   @RequestMapping("/StoreWineRegister")
   public ModelAndView storewineregister(
		   @RequestParam("w_price") int w_price,
		   @RequestParam("selectedOption") int selectedOption,
		   @RequestParam("w_amount") int w_amount,
		   @RequestParam("s_no") int s_no
		   ){
	   
      storeService.insertWine(w_price,w_amount,selectedOption,s_no);
      ModelAndView mv = new ModelAndView();
      mv.setViewName("redirect:/StoreWineManage?s_no="+s_no);
      return mv;
   }
   
}