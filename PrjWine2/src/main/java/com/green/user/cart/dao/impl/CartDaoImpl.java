package com.green.user.cart.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.user.cart.dao.CartDao;
import com.green.user.cart.vo.CartVo;

@Repository("cartDao")
public class CartDaoImpl implements CartDao {

	@Autowired
	private  SqlSession  sqlSession;
	
	@Override
	public List<CartVo> getCartList() {
		
		List<CartVo>  cartList  = sqlSession.selectList("Cart.CartList");
		return    cartList;
	}
}