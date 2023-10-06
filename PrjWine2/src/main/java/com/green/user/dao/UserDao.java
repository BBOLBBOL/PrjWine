package com.green.user.dao;

import com.green.user.vo.UserVo;

public interface UserDao {
	void insertUser(UserVo vo);

	UserVo userlogin(UserVo vo);
}
