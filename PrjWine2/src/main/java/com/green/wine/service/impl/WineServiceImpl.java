package com.green.wine.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.WineVo;
import com.green.wine.dao.WineDao;
import com.green.wine.service.WineService;

@Service("wineService")
public class WineServiceImpl implements WineService {
	
	@Autowired
	private WineDao wineDao;
	
	@Override
	public List<WineVo> getWineInfo(WineVo vo) {
		
		List<WineVo> wineInfo  =  wineDao.getWineInfo(vo);
		
		return wineInfo;
	}

	@Override
	public List<HavingWineVo> getStoreList(HavingWineVo store) {
		
		List<HavingWineVo> storeList  =  wineDao.getStoreList(store);
		
		return storeList;
	}

}
