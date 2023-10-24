package com.green.store.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.green.store.service.StoreService;
import com.green.store.vo.StoreVo;

@Controller
public class StoreLoginController {
	@Autowired
	private  StoreService   storeService;
	
	// 로그인 기능 구현
	@RequestMapping("/StoreLogin")
	public String storelogin( StoreVo vo, HttpServletRequest request, Model model ) {
		
		// 세션 생성 
		HttpSession session = request.getSession();
		String returnURL = "";
		
		// 기존 로그인정보 존재하면 기존정보 제거
		if( session.getAttribute("loginVo") != null ) {
			session.removeAttribute("loginVo");
		}
		
		// 로그인 입력값으로 DB조회후 확인
		StoreVo loginVo = storeService.storelogin( vo );
		if ( loginVo != null ) {
			session.setAttribute("sloginVo", loginVo);
			returnURL = "redirect:/";
		} else {
			model.addAttribute("loginFail", "아이디나 비밀번호가 잘못되었습니다. 다시 시도하세요.");
			returnURL = "redirect:/StoreLoginForm";
		}
		
		return returnURL;
	}
	
	// 로그아웃
	@RequestMapping("/StoreLogOut")
	public String storelogout( HttpSession session ) {
		session.invalidate();
		return "/login/storeloginform";
	}
	
	//로그인폼 화면 가기
	@RequestMapping("/StoreLoginForm")
	public String storeloginform() {
		return "/login/storeloginform";
	}
	// 매장 회원가입화면
	@RequestMapping("/StoreJoinForm")
	public String storejoinform() {
		return "/login/storejoinform";
	}
	
	// 매장 회원가입 	
	@RequestMapping("/StoreJoin")
	public  ModelAndView   storejoin(
		@RequestParam  HashMap<String, Object> map,    // String 정보
		HttpServletRequest   request                   // String + File(Binary)
			) {
		
		storeService.setJoin(map, request);		
		
		ModelAndView  mv  =  new ModelAndView();
		mv.setViewName("redirect:/");
		mv.addObject("map", map);
		return  mv;
	}
	

@ResponseBody
@RequestMapping("/StoreIdChk")
public int idCheck(@RequestParam("s_id") String s_id) {
	
	int cnt  =  storeService.idCheck(s_id);
	
	return cnt;
}

}

