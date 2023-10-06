package com.green.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.user.dao.UserDao;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private  UserDao  userDao;
	
	@Override
	public void insertUser(UserVo vo) {
		
		userDao.insertUser( vo );

	}

	@Override
	public UserVo userlogin(UserVo vo) {

		UserVo loginVo = userDao.userlogin( vo );
		
		return loginVo;
	}

	
	
	

}
