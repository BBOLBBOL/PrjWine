package com.green.wine.service;

import java.util.List;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.WineVo;

public interface WineService {

	List<WineVo> getWineInfo(WineVo vo);

	List<HavingWineVo> getStoreList(HavingWineVo store);

}
