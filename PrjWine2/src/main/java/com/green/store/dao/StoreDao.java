package com.green.store.dao;


import java.util.List;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineListVo;

public interface StoreDao {
	// (영태)
	void insertSearch(RegVo vo);
	// (영태)
	List<RegVo> getSearchList(RegVo vo);
	// (병규)
	void insertStore(StoreVo vo);
	// (병규)
	StoreVo storelogin(StoreVo vo);
	// (임규)
	List<HavingWineVo> getWineList(StoreVo vo);
	// (임규)
	void updateWineList(HavingWineVo havingVo);



}
