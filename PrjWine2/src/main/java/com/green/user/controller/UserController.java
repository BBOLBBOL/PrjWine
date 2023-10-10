package com.green.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
public class UserController {
	@Autowired
	private  UserService   userService;
	//유저 로그인폼 이동
	@RequestMapping("/UserLoginForm")
	public String userloginform() {
		return  "/login/userloginform";
	}
	//유저 로그인
	@RequestMapping("/UserLogin")
	public String userlogin( UserVo vo , HttpServletRequest request ) {
		
		// 세션 생성
		HttpSession session = request.getSession();
		String returnURL = "";
				
		// 기존의 로그인정보가 존재한다면 기존정보를 제거
		if( session.getAttribute("loginVo") != null  ) {
			session.removeAttribute("loginVo");
		}
		
		// 로그인 입력값으로 DB조회후 확인
		UserVo loginVo = userService.userlogin( vo );
		System.out.println(loginVo);
		if( loginVo  !=  null  ) {
			session.setAttribute("loginVo", loginVo);
			returnURL = "redirect:/";        //  Home 으로 보낸다	
		} else {
			returnURL = "redirect:/UserLoginForm";   //  Loginform 으로 보낸다
		}
		return returnURL;
	}
	//유저 로그아웃
	@RequestMapping("/UserLogOut")
	public String userlogout( HttpSession session ) {
		
		session.invalidate();
		
		return "redirect:/";
	}
	//유저 회원가입화면 가기
	@RequestMapping("/UserJoinForm")
	public String userjoinform() {
		return "/login/userjoinform";
	}
	
	//가입버튼 누른후
	@RequestMapping("/UserJoin")
	public String userjoin( UserVo  vo ) {
		userService.insertUser(vo);
		return "/login/userloginform";
	}
	@RequestMapping("/UserFavoriteStores")
	public String favoritestores() {
		return "/user/favoritestores";
	}

	@RequestMapping("/UserPurchaseHistory")
	public String purchasehistory() {
		return "/user/purchasehistory";
	}
	//유저정보 확인페이지 이동
	@RequestMapping("/UserInfo")
	public String userinfo() {
		return "/user/userinfo";
	}
	//유저정보 업데이트 페이지 이동
	@RequestMapping("/UserUpdateForm")
	public String userupdateform() {
		return "/user/userupdateform";
	}
	//유저장바구니
	@RequestMapping("/UserCart")
	public String usercart() {
		return "/user/cart";
	}
}
