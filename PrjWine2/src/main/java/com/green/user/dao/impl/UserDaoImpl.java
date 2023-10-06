package com.green.user.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.user.dao.UserDao;
import com.green.user.vo.UserVo;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	private  SqlSession sqlSession;
	
	@Override
	public void insertUser(UserVo vo) {
		
		// sqlSession :Mybatis 라이브러리를 사용한다
		sqlSession.insert("User.UserInsert", vo);

	}

	@Override
	public UserVo userlogin(UserVo vo) {
		
		UserVo loginVo = sqlSession.selectOne("User.UserLogin", vo );
		return loginVo;
	}
}
