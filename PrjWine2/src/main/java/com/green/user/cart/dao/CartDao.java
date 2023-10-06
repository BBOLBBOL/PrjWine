package com.green.user.cart.dao;

import java.util.List;

import com.green.user.cart.vo.CartVo;

public interface CartDao {

	List<CartVo> getCartList();

}
