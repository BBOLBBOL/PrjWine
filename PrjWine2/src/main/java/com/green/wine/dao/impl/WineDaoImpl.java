package com.green.wine.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.WineVo;
import com.green.wine.dao.WineDao;

@Repository("wineDao")
public class WineDaoImpl implements WineDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<WineVo> getWineInfo(WineVo vo) {
		
		List<WineVo> wineInfo  =  sqlSession.selectList("Wine.GetWineInfo", vo);
		
		return wineInfo;
	}

	@Override
	public List<HavingWineVo> getStoreList(HavingWineVo store) {
		
		List<HavingWineVo> storeList  =  sqlSession.selectList("Wine.GetStoreList", store);
		
		return storeList;
	}
}
