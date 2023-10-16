package com.green.user.cart.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.green.user.cart.service.CartService;
import com.green.user.cart.vo.CartVo;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
public class CartController {
   
   @Autowired
   private CartService cartService;
   
   @Autowired
   private UserService userService;
   //장바구니 목록   
   @RequestMapping("/CartList")
      public ModelAndView cart(CartVo vo) {
         
        int c_idx  =  vo.getC_idx();
        int u_no   =  vo.getU_no();        
         List<CartVo> cartList  =  cartService.getCartList(vo);  
         
         
         ModelAndView  mv  =  new ModelAndView();
         mv.setViewName("user/cart");
         mv.addObject("cartList", cartList );
         mv.addObject("c_idx", c_idx);
         mv.addObject("u_no", u_no);
         return mv;
      }
   
   // /AddtoCart?u_no=${wine.u_no}&wl_idx=${wine.wl_idx}
   @RequestMapping("/AddCart")
   public ModelAndView AddCart(CartVo vo) {
	   
	   int u_no   =  vo.getU_no();        
 
       
       cartService.AddCart(vo);
       
       ModelAndView  mv  =  new ModelAndView();
       mv.addObject("vo", vo);
       mv.addObject("u_no", u_no);
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
            System.out.println(vo);
            System.out.println(value);
            	
         }
         return 1;
   }
    
   
   // map:{u_no=1, cartids=1,2, rowCheck=1}
   @RequestMapping("/UserPayment")
   public ModelAndView userPayment(@RequestParam HashMap<String, Object> map, CartVo vo) {
      
	   System.out.println("map:" + map);
	   
      // input 에 있는 value=name cartids 를 받아온다 
      String cartids = String.valueOf( map.get("cartids") ); 
      
      UserVo user = new UserVo();
      int u_no = Integer.parseInt( String.valueOf( map.get("u_no") ));
      user.setU_no(u_no);
      
         
       
       // 선택 한 주문 목록 
       List<CartVo> selCartList  =  cartService.getSelectList(u_no, cartids);
       // 유저목록 
       List<UserVo> userList  =  userService.getUserList(user);
       System.out.println(selCartList);
      ModelAndView mv  =  new ModelAndView();
      mv.setViewName("user/payment");
      mv.addObject("selCartList", selCartList);
      mv.addObject("userList", userList);
      System.out.println("map :123213 " + map);
      String s_name = (String) mv.getModel().get("s_name");
      System.out.println(s_name);
      return mv;
   }  
   @GetMapping("/WinePay")
   @ResponseBody
   public void winePay(int amount, String imp_uid, String merchant_uid) throws Exception {
	    
	   	    	   
	    System.out.println("결제 성공");
		System.out.println("결제 금액 : " + amount);
		System.out.println("imp_uid : " + imp_uid);
		System.out.println("merchant_uid : " + merchant_uid);
	   
   }
   
   @Controller
   public class SampleController {
   	
   	@RequestMapping("jq.cls")
       public ModelAndView main(ModelAndView mv) {
       	mv.setViewName("kakaoPay");
       	return mv;
       }
       @RequestMapping("pay.cls")
       public ModelAndView serve(ModelAndView mv) {
       	mv.setViewName("serve");
       	return mv;
       }
   	
       @RequestMapping("/kakaopay.cls")
       @ResponseBody
       public String kakaoPay() {
       	try {
   			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
   			HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
   			httpURLConnection.setRequestMethod("POST");
   			httpURLConnection.setRequestProperty("Authorization","KakaoAK 87bf4ab7fa5dd01a8b4850cb6bbbb835");
   			httpURLConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
   			httpURLConnection.setDoOutput(true);
   			
   			String parameter = 
   					"cid=TC0ONETIME&"
   					+ "partner_order_id=partner_order_id&"
   					+ "partner_user_id=partner_user_id&"
   					+ "item_name=초코파이&"
   					+ "quantity=1&"
   					+ "total_amount=2200&"
   					+ "vat_amount=200&"
   					+ "tax_free_amount=0&"
   					+ "approval_url=http://localhost:8181/kakaopayTest/success.cls&"
   					+ "fail_url=http://localhost:8181/kakaopayTest/fail.cls&"
   					+ "cancel_url=http://localhost:8181/kakaopayTest/cancel.cls";
   			OutputStream outputStream = httpURLConnection.getOutputStream();
   			DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
   			dataOutputStream.writeBytes(parameter);
   			dataOutputStream.flush();
   			dataOutputStream.close();
   			
   			int resultCode = httpURLConnection.getResponseCode();
   			
   			InputStream inputStream;
   			if(resultCode == 200) {
   				inputStream = httpURLConnection.getInputStream();
   			}else {
   				inputStream = httpURLConnection.getErrorStream();
   			}
   			
   			InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
   			BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
   			return bufferedReader.readLine();
   		} catch (MalformedURLException e) {
   			e.printStackTrace();
   		} catch (IOException e) {
   			e.printStackTrace();
   		}
       	return "[\result\":\" NO\"]";
       }
       
       @GetMapping("/success.cls")
       public String kakaoPaySuccess() {
           return "home";
       }
       
   }
   
   
}