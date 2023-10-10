package com.green.wine.dao;

import java.util.List;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.WineVo;

public interface WineDao {

	List<WineVo> getWineInfo(WineVo vo);

	List<HavingWineVo> getStoreList(HavingWineVo store);

}
