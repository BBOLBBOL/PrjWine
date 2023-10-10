package com.green.user.service;

import com.green.user.vo.UserVo;

public interface UserService {
	void insertUser(UserVo vo);

	UserVo userlogin(UserVo vo);


}
