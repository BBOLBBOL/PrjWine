package com.green.store.service;

import java.util.List;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;

public interface StoreService {

	// (영태)
	void insertSearch(RegVo vo);

	// (영태)
	List<RegVo> getSearchList(RegVo vo);

	// (병규)
	StoreVo storelogin(StoreVo vo);

	// (병규)
	void insertStore(StoreVo vo);

	// (임규)
	List<HavingWineVo> getWineList(StoreVo vo);

	// (임규)
	void updateWineList(HavingWineVo havingVo);

}
