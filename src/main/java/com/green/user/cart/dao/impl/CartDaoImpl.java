package com.green.user.cart.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.store.vo.HavingWineVo;
import com.green.user.cart.dao.CartDao;
import com.green.user.cart.vo.CartVo;
import com.green.user.cart.vo.PaymentVo;

@Repository("cartDao")
public class CartDaoImpl implements CartDao {

   @Autowired
   private  SqlSession  sqlSession;
   
   @Override
   public List<CartVo> getCartList(CartVo vo) {
      
      List<CartVo>  cartList  = sqlSession.selectList("Cart.CartList", vo);
      return    cartList;
   }

   @Override
   public void deleteCart(CartVo vo) {
      sqlSession.delete("Cart.DeleteCartList", vo);
      
   }

@Override
public List<CartVo> getSelectList(int u_no, String cartids) {
	
	// cartidx 에 ',' 를 자른다 [배열에서]
	int[]              digs    = Stream.of(cartids.split(",")).mapToInt(Integer::parseInt).toArray();   // [3, 1, 2]
	ArrayList<Integer> list = new ArrayList<>();
	for (Integer  num: digs) {
		list.add(num);
	}
	
	HashMap<String, Object> map = new HashMap<String, Object>();
	map.put("u_no", u_no);
	map.put("list", list);
	
	
	List<CartVo> getSelectList  =  sqlSession.selectList("Cart.SelectList", map);
	
	
	return getSelectList;
}

@Override
public void addCart(CartVo vo) {
	 sqlSession.insert("Cart.InsertCart", vo);
	
	
}


@Override
public List<HavingWineVo> selCartList(HavingWineVo vo) {
	
	List<HavingWineVo> selCartList  =  sqlSession.selectList("Cart.SelectCartList", vo);
	
	
	return selCartList;
}

@Override
public void insertPay(Map<String, Object> for_map) {
	
	
	
	sqlSession.insert("Cart.InsertPay", for_map);
	
	sqlSession.delete("Cart.DeleteCart", for_map);
	
	sqlSession.update("Cart.UpdatePayWineList", for_map);
	
}


} 