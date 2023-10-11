package com.green.wine.service;

import java.util.List;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.WineVo;

public interface WineService {
	
	List<WineVo> getWineInfo(WineVo vo);
	
	List<HavingWineVo> getStoreList(HavingWineVo store);
	
	List<RegVo> nameSearch(String name_Search);

	List<RegVo> allClick(String all_click);

	List<RegVo> redClick(String red_click);
	
    List<RegVo> whiteClick(String white_click);

    List<RegVo> sparkClick(String sparkling_click);

    List<RegVo> roseClick(String rose_click);

    List<RegVo> otherClick(String other_click);
}