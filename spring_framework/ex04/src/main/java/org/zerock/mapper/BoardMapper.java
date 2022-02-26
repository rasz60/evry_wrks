package org.zerock.mapper;

import java.util.List;
import java.util.Map;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {
	
	List<BoardVO> getList();
	
	void insert(BoardVO bVo);
	
	void insertSelectKey(BoardVO bVo);

	BoardVO read(Long bvo);
	
	int delete(Long bvo);

	int update(BoardVO bvo);
	
	List<BoardVO> getListWithPage(Criteria criteria);
	
	int getTotalCount(Criteria criteria);
	
	List<BoardVO> searchTest(Map<String, Map<String, String>> map);
}
