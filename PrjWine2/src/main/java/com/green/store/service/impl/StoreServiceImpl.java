package com.green.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.store.dao.StoreDao;
import com.green.store.service.StoreService;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;

@Service("storeService")
public class StoreServiceImpl implements StoreService {
	
	@Autowired
	private StoreDao storeDao;

	// (영태)
	@Override
	public void insertSearch(RegVo vo) {
		storeDao.insertSearch(vo);
	}
	// (영태)
	@Override
	public List<RegVo> getSearchList(RegVo vo) {
		List<RegVo> searchList = storeDao.getSearchList(vo);
		return searchList;
	}
	// (병규)
	@Override
	public void insertStore(StoreVo vo) {
		storeDao.insertStore( vo );
	}
	// (병규)
	@Override
	public StoreVo storelogin(StoreVo vo) {
		StoreVo loginVo = storeDao.storelogin( vo );
		return loginVo;
	}
	// (임규)
	@Override
	public List<HavingWineVo> getWineList(StoreVo vo) {
	      List<HavingWineVo> wineList  =  storeDao.getWineList(vo);
	      return wineList;
	   }
	// (임규)
    @Override
    public void updateWineList(HavingWineVo havingVo) {
	      storeDao.updateWineList(havingVo);
	   }



}
