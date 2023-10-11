package com.green.store.dao;

import java.util.HashMap;
import java.util.List;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.user.vo.UserVo;

public interface StoreDao {
	// (영태)
	void insertwine(int selectedOption, int w_amount, int w_price, int s_no, int w_no);
	
	// (영태)
	List<RegVo> getSearchList(String searchKeyword, String searchOption);
	
	// (병규)
	StoreVo storelogin(StoreVo vo);
	// (임규)
	List<HavingWineVo> getWineList(HavingWineVo vo);
	// (임규)
	void updateWineList(HavingWineVo havingVo);
	
	void deleteWineList(HavingWineVo havingVo);
	
	List<HavingWineVo> selectList(HavingWineVo vo);	

	void setJoin(HashMap<String, Object> map);

	List<StoreVo> getSnameSearch(String sname_Search);

	List<StoreVo> storeList(StoreVo vo);
	



}
