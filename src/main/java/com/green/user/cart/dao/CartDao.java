package com.green.user.cart.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.green.store.vo.HavingWineVo;
import com.green.user.cart.vo.CartVo;
import com.green.user.cart.vo.PaymentVo;

public interface CartDao {

   List<CartVo> getCartList(CartVo vo);

   void deleteCart(CartVo vo);

   List<CartVo> getSelectList(int u_no, String cartids);

   void addCart(CartVo vo);

   void insertPay(Map<String, Object> for_map);

   List<HavingWineVo> selCartList(HavingWineVo vo);

}