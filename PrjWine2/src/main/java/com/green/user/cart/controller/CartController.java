package com.green.user.cart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.user.cart.service.CartService;
import com.green.user.cart.vo.CartVo;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	//장바구니 목록

	
	@RequestMapping("/CartList")
	   public ModelAndView cart() {
	      
	      List<CartVo> cartList  =  cartService.getCartList();  
	      
	      
	      ModelAndView  mv  =  new ModelAndView();
	      mv.setViewName("/user/cart");
	      mv.addObject("cartList", cartList );
	      System.out.println(cartList);
	      System.out.println(mv);
	      return mv;
	   }
}
