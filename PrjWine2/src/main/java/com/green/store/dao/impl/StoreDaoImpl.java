package com.green.store.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.store.dao.StoreDao;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineListVo;

@Repository("storeDao")
public class StoreDaoImpl implements StoreDao {
	
	@Autowired
	private SqlSession sqlSession;

	//(영태)
	@Override
	public void insertSearch(RegVo vo) {
		sqlSession.insert("Store.InsertSearch",vo);
	}
	//(영태)
	@Override
	public List<RegVo> getSearchList(RegVo vo) {
		List<RegVo> searchList = sqlSession.selectList("Store.SearchList", vo);
		return searchList;
	}
	//(병규)
	@Override
	public void insertStore(StoreVo vo) {
		System.out.println(vo);
		sqlSession.insert("Store.StoreInsert", vo );
		
	}
	//(병규)
	@Override
	public StoreVo storelogin(StoreVo vo) {
		StoreVo loginVo = sqlSession.selectOne("Store.Storelogin", vo );
		return loginVo;
	}
	// (임규)
	   @Override
	   public List<HavingWineVo> getWineList(StoreVo vo) {
	      List<HavingWineVo> wineList  =  sqlSession.selectList("Store.WineList",vo);
	      return wineList;
	   }
	 // (임규)
	 @Override
	 public void updateWineList(HavingWineVo havingVo) {
	      sqlSession.update("Store.UpdateWineList", havingVo);
	      
	  }
	

}
