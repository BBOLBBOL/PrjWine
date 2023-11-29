package com.green.cs.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.cs.service.CsService;
import com.green.cs.vo.CsVo;
import com.green.pds.vo.PdsPagingVo;

@Controller
public class CsController {
	
	@Autowired
	private CsService csService;
	
	@RequestMapping("/StoreCsInquiryForm")
	public ModelAndView storeCsInquiryForm(CsVo vo) {
		 
		int s_no  =  vo.getS_no();
		int scs_idx = vo.getScs_idx();
		ModelAndView  mv  = new ModelAndView();  
		mv.setViewName("cs/storecsinquiry");
		mv.addObject("scs_idx", scs_idx);
		mv.addObject("s_no", s_no);
		
		return mv;
	}
	
	@RequestMapping("/StoreCsInquiry")
	public ModelAndView storeCsInquiry(CsVo vo,
			@RequestParam  HashMap<String, Object> map,    // String 정보
		HttpServletRequest   request                   // String + File(Binary)
			) {
		map.put("vo", vo);
		csService.storeCsInsert(map, request);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("redirect:/StoreCs?s_no=" + vo.getS_no());
		return mv;
	}
	
	
	
	@RequestMapping("/UserCsInquiryForm")
	public ModelAndView userCsInquiryForm(CsVo vo) {
		
		int ucs_idx  =  vo.getUcs_idx();
		int u_no     =  vo.getU_no();
		ModelAndView  mv  = new ModelAndView();  
		mv.setViewName("cs/usercsinquiry");
		mv.addObject("ucs_idx", ucs_idx);
		mv.addObject("u_no", u_no);
		return mv;
	}
	
	@RequestMapping("/UserCsInquiry")
	public ModelAndView userCsInquiry(CsVo vo,
			@RequestParam  HashMap<String, Object> map,    // String 정보
		HttpServletRequest   request                   // String + File(Binary)
			) {
		map.put("vo", vo);
		csService.userCsInsert(map, request);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("redirect:/UserCs?u_no=" + vo.getU_no());
		return mv;
	}
	
	//UserCs?u_no=${loginVo.u_no }
	@RequestMapping("/UserCs")
	 public ModelAndView usercs(CsVo vo, PdsPagingVo pds,
			 @RequestParam(value="nowPage", required = false) String nowPage,
			 @RequestParam(value="cntPerPage", required = false) String cntPerPage 
			 ) {
		
		int total  =  csService.countCsUser(vo);
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "6";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if(cntPerPage == null) {
			cntPerPage = "6";
		}
	    System.out.println(total);
		pds  =  new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
	
		 int u_no  =  vo.getU_no();
		 
		 List<CsVo> userCsList2  =   csService.getUserCsList2(pds, u_no); 
		 ModelAndView mv = new ModelAndView();
         mv.setViewName("cs/usercs");
         mv.addObject("usercsList", userCsList2 );
         mv.addObject("u_no", u_no);
         mv.addObject("pds", pds);
         
         return mv;
		
	}
	@RequestMapping("/CsAllUser")
	public ModelAndView csalluser(CsVo vo, PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false) String nowPage,
			@RequestParam(value="cntPerPage", required = false) String cntPerPage 
			)
	{
		int total  =  csService.countAdminCsUser();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if(cntPerPage == null) {
			cntPerPage = "10";
		}
		
		pds  =  new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		List<CsVo> csAdminUserList  =  csService.csAdminUserList(pds);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/adminusercs");
		mv.addObject("csalluserList", csAdminUserList );
		mv.addObject("pds", pds);
		
		return mv;
		
	}
	
	@RequestMapping("/CsView")
	public ModelAndView csview(CsVo vo)
	{
		List<CsVo> csviewList  =  csService.getcsviewList(vo);  
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/usercsview");
		mv.addObject("csviewList", csviewList );
		
		System.out.println(mv);
		return mv;
		
	}
	
	@RequestMapping("/AdminCsView")
	public ModelAndView admincsview(CsVo vo)
	{
		List<CsVo> admincsviewList  =  csService.getadmincsviewList(vo);  
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/adminusercsview");
		mv.addObject("admincsviewList", admincsviewList );
		
		System.out.println(mv);
		return mv;
		
	}
	
	@RequestMapping("/CsStoreView")
	public ModelAndView csstoreview(CsVo vo)
	{
		List<CsVo> csstoreviewList  =  csService.getcsstoreviewList(vo);  
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/storecsview");
		mv.addObject("csstoreviewList", csstoreviewList );
		
		System.out.println(mv);
		return mv;
		
	}
	
	@RequestMapping("/AdminStoreView")
	public ModelAndView admincsstoreview(CsVo vo)
	{
		List<CsVo> admincsstoreviewList  =  csService.getadmincsstoreviewList(vo);  
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/adminstorecsview");
		mv.addObject("admincsstoreviewList", admincsstoreviewList );
		
		System.out.println(mv);
		return mv;
		
	}
	
	
	@RequestMapping("/CsAllStore")
	public ModelAndView csAllStore(CsVo vo, PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false) String nowPage,
			@RequestParam(value="cntPerPage", required = false) String cntPerPage
			) {
		
		int total  =  csService.countAdminCsStore();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if(cntPerPage == null) {
			cntPerPage = "10";
		}
		
		pds  =  new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		List<CsVo> csAdminStoreList = csService.csAdminStoreList(pds);
	
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("cs/adminstorecs");
		mv.addObject("allStore", csAdminStoreList);
		mv.addObject("pds", pds);
		return mv;
	}
	
	
	@RequestMapping("/StoreCs")
	public ModelAndView storecs(CsVo vo, PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false) String nowPage,
			@RequestParam(value="cntPerPage", required = false) String cntPerPage
			) {
		
		int total  =  csService.countCsStore(vo);
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "6";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if(cntPerPage == null) {
			cntPerPage = "6";
		}
		pds  =  new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		int s_no  =  vo.getS_no();
		
		List<CsVo> storeCsList2  =  csService.getStoreCsList2(pds, s_no);
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("cs/storecs");
		mv.addObject("storecsList", storeCsList2);
		mv.addObject("s_no", s_no);
		mv.addObject("pds", pds);
		return mv;
	}
	
	@RequestMapping("/AdminCsResponse")
	public ModelAndView adminCsResponse(CsVo vo) {
	
	ModelAndView mv  =  new ModelAndView();
	// User
	int UserCsResponse   =  csService.adminCsResponse(vo);
	
	// Store
	
	if(UserCsResponse == 1) {
		mv.setViewName("redirect:/AdminCsView?ucs_idx=" + vo.getUcs_idx());
	} else {
		mv.setViewName("redirect:/AdminStoreView?scs_idx=" + vo.getScs_idx());
	}
	
	return mv;
	}
}
