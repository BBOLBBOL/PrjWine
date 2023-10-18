package com.green.event.dao.Impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.event.dao.EventDao;
import com.green.event.vo.EventVo;

@Repository("eventDao")
public class EventDaoImpl implements EventDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<EventVo> getEventList(EventVo vo) {
		
		List<EventVo> eventList = sqlSession.selectList("Event.EventList", vo);
		
		return eventList;
	}

	@Override
	public void insertEvent(HashMap<String, Object> map) {
		sqlSession.insert("Event.EventInsert",  map ); 
	}

}
