package com.green.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
		//System.out.println(loginVo);
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
	// 아이디 중복체크
	@ResponseBody
	@RequestMapping("/UserIdChk")
	public int idCheck(@RequestParam("u_id") String u_id) {
		
		int cnt  =  userService.idCheck(u_id);
		
		return cnt;
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
	public ModelAndView userinfo(UserVo vo) {
		int u_no  =  vo.getU_no();
		// 유저 정보 조회하기 
		List<UserVo> userList  =  userService.getUserList(vo);
		
		ModelAndView  mv  =  new ModelAndView();
		mv.setViewName("user/userinfo");
		mv.addObject("userList", userList);
		mv.addObject("u_no", u_no);
		return mv;
	}
	//유저정보 업데이트 페이지 이동
	@RequestMapping("/UserUpdateForm")
	public ModelAndView userupdateform(UserVo vo) {
		
		List<UserVo> userList  =  userService.getUserList(vo);
		
		ModelAndView  mv  =  new  ModelAndView();
		mv.setViewName("user/userupdate");
		mv.addObject("userList", userList);
		return mv;
	}
	
	@RequestMapping("/UserUpdate")
	public ModelAndView userUpdate(UserVo vo) {
		
		userService.updateUser(vo);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("redirect:/UserInfo?u_no=" + vo.getU_no());
		return mv;
	}
	
	
}
