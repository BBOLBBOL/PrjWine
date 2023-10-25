package com.green.user.cart.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.green.store.service.StoreService;
import com.green.store.vo.HavingWineVo;
import com.green.user.cart.service.CartService;
import com.green.user.cart.vo.CartVo;
import com.green.user.cart.vo.PaymentVo;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

import net.sf.json.JSONArray;

@Controller
public class CartController {
   
   @Autowired
   private CartService cartService;
   
     
   @Autowired
   private UserService userService;
   
   @Autowired 
   private StoreService storeService;
   
   
   @PostMapping("/insertPay")
   @ResponseBody
   public String insertPay(@RequestBody List<Map<String, Object>> params) {
	   
	   System.out.println("tq 좀되라 : " + params );
	   
	   if(params.size() == 1) {
		   
		   Map<String, Object> for_map  =  params.get(0);
		   
		   cartService.insertPay(for_map);
	   } else if(params.size() > 1) {
		   for(Map<String, Object> for_map : params) {
			   for_map.get("paynum");
			   for_map.get("c_idx");
			   for_map.get("sh_date");
			   for_map.get("u_no");
			   for_map.get("s_no");
			   for_map.get("p_allprice");
			   for_map.get("w_no");
			   for_map.get("wl_idx");
			   System.out.println("map 이용: " + for_map);
			   cartService.insertPay(for_map);
		   }
		   
	   }
     


	   return "success";
   }

   @GetMapping("Payment")
   public ModelAndView paymentContents(String paynum, HttpSession session  ) {

	  ModelAndView mv  =  new ModelAndView(); 

	  // 주문 정보 가져오기



	  return mv; 
   }
   
   //장바구니 목록   
   @RequestMapping("/CartList")
      public ModelAndView cart(CartVo vo) {
         
        int c_idx  =  vo.getC_idx();
        int wl_idx  =  vo.getWl_idx();
        int u_no   =  vo.getU_no();      
         List<CartVo> cartList  =  cartService.getCartList(vo);  
         
         
         ModelAndView  mv  =  new ModelAndView();
         mv.setViewName("user/cart");
         mv.addObject("cartList", cartList );
         mv.addObject("c_idx", c_idx);
         mv.addObject("wl_idx", wl_idx);
         mv.addObject("u_no", u_no);
         return mv;
      }
   
   @RequestMapping("/AddCartForm")
   public ModelAndView addCartForm(HavingWineVo vo) {
	   
	   
	   
	   List<HavingWineVo> selCartList  =  cartService.selCartList(vo);
	   
	   ModelAndView mv  =  new ModelAndView();
	   mv.setViewName("user/selcartlist");
	   mv.addObject("wineList", selCartList);
	   mv.addObject("w_amount", mv);
	   return mv;
   }
   
   
   // /AddtoCart?u_no=${wine.u_no}&wl_idx=${wine.wl_idx}
   @RequestMapping("/AddCart")
   public ModelAndView AddCart(CartVo vo) {
	   
	   int u_no   =  vo.getU_no();
	   int wl_idx = vo.getWl_idx();
 
       
       cartService.AddCart(vo);
       
       ModelAndView  mv  =  new ModelAndView();
       mv.addObject("vo", vo);
       mv.addObject("u_no", u_no);
       mv.addObject("wl_idx", wl_idx);
       mv.setViewName("redirect:/CartList");
       mv.addObject("message", "장바구니에 추가되었습니다");
      
	return mv; 
	
	}
   
   
   
   // 게시물 선택삭제
   @ResponseBody
   @RequestMapping("/CartDelete") 
   public int cartDelete(@RequestParam(value = "valueArr[]") String[] valueArr, CartVo vo ) {
         
         
         
         for(String value : valueArr) {
            vo.setC_idx(Integer.parseInt(value));
            cartService.deleteCart(vo);
 
            	
         }
         return 1;
   }
    
   // map:{u_no=1, cartids=1,2, rowCheck=1}
   @RequestMapping("/UserPayment")
   public ModelAndView userPayment(@RequestParam HashMap<String, Object> map, CartVo vo) {
      
      
      // input 에 있는 value=name cartids 를 받아온다 
      String cartids = String.valueOf( map.get("cartids") ); 

      UserVo user = new UserVo();
      int u_no = Integer.parseInt( String.valueOf( map.get("u_no") ));
      user.setU_no(u_no);
      
       
       // 선택 한 주문 목록 
       List<CartVo> selCartList  =  cartService.getSelectList(u_no, cartids);
       // 유저목록 
       List<UserVo> userList  =  userService.getUserList(user);
       
       boolean isValid  =  true;
       for(CartVo cartItem : selCartList) {
    	   int selectedQuantity  =  cartItem.getC_count();
    	   int availableQuantity  =  cartItem.getW_amount();
    	   
    	   if(selectedQuantity <=0 || selectedQuantity > availableQuantity) {
    		   isValid  =  false;
    		   break;
    	   }
       }
       if(!isValid) {
    	   ModelAndView mv  =  new ModelAndView();
    	   mv.addObject("error", "선택한 수량이 유효하지 않습니다.");
    	   mv.setViewName("redirect:/CartList?u_no=" + vo.getU_no());
    	   return mv;
       }
       
      ModelAndView mv  =  new ModelAndView();
      mv.setViewName("user/payment");
      mv.addObject("selCartList", selCartList);
      mv.addObject("userList", userList);
      return mv;
   }   
   
}