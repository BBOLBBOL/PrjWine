package com.green.user.cart.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.store.vo.HavingWineVo;
import com.green.user.cart.dao.CartDao;
import com.green.user.cart.service.CartService;
import com.green.user.cart.vo.CartVo;
import com.green.user.cart.vo.PaymentVo;

@Service("cartService")
public class CartServiceImpl implements CartService {

   @Autowired
   private   CartDao  cartDao;


   @Override
   public List<CartVo> getCartList(CartVo vo) {
      
      List<CartVo>  cartList = cartDao.getCartList(vo);
      return cartList;
   }

   @Override
   public void deleteCart(CartVo vo) {
      cartDao.deleteCart(vo);
      
   }

@Override
public List<CartVo> getSelectList(int u_no, String cartids) {
	
	List<CartVo> getSelectList  =  cartDao.getSelectList(u_no, cartids);
	
	return getSelectList;
}

@Override
public void AddCart(CartVo vo) {
	System.out.println(vo);

	cartDao.addCart(vo);
			
}


@Override
public List<HavingWineVo>  selCartList(HavingWineVo vo) {
	
	List<HavingWineVo> selCartList  =  cartDao.selCartList(vo);
	
	return selCartList;
}


@Override
public String insertPay(Map<String, Object> for_map) {
	cartDao.insertPay(for_map);
	return null;
}






}

