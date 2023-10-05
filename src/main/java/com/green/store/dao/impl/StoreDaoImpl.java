package com.green.store.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.store.dao.StoreDao;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineListVo;

@Repository("storeDao")
public class StoreDaoImpl implements StoreDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<HavingWineVo> getWineList(StoreVo vo) {
		
		List<HavingWineVo> wineList  =  sqlSession.selectList("Store.WineList",vo);
		
		return wineList;
	}

	@Override
	public void updatrWine(WineListVo vo) {
		
		sqlSession.update("Store.UpdateWine", vo);
		
	}


	

}