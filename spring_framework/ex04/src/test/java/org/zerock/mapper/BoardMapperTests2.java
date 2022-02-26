package org.zerock.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests2 {
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Test
	public void testGetList() {
		log.info("testGetList");
		boardMapper.getList();
	}
	
	@Test
	public void testInsert() {
		BoardVO vo = new BoardVO();
		vo.setTitle("Test 테스트");
		vo.setContent("Content 테스트");
		vo.setWriter("Writer 테스트");
		
		boardMapper.insert(vo);
	}
	
	@Test
	public void testInsertSelectKey() {
		BoardVO vo = new BoardVO();
		vo.setTitle("AAATest 테스트");
		vo.setContent("AAAContent 테스트");
		vo.setWriter("AAAWriter 테스트");
		
		boardMapper.insertSelectKey(vo);
	}
	
	@Test
	public void testRead() {
		BoardVO vo = boardMapper.read(12L);
		log.info(vo);
	}
	
	@Test
	public void testDelete() {
		int count = boardMapper.delete(12L);
		log.info(count);
	}
	
	@Test
	public void testUpdate() {
		BoardVO vo = new BoardVO();
		vo.setBno(9L);
		vo.setTitle("updated");
		vo.setContent("updated");
		vo.setWriter("user00");
		log.info("count : " + boardMapper.update(vo));
	}
	
	@Test
	public void testPaging() {
		
		Criteria criteria = new Criteria();
		
		List<BoardVO> list = boardMapper.getListWithPage(criteria);
		
		
		list.forEach(b -> log.info(b));
		
	}
	
	@Test
	public void testPageDTO() {
		Criteria criteria = new Criteria();
		criteria.setPageNum(1);
		PageDTO pDto = new PageDTO(criteria, 2345);
		log.info(pDto);
	}
	
	@Test
	public void testSearch() {
		Map<String, String> map = new HashMap<>();
		map.put("T", "TTT");
		map.put("C", "CCC");
		map.put("W", "WWW");
		
		Map<String, Map<String, String>> outer = new HashMap<>();
		outer.put("map", map);
		
		List<BoardVO> list = boardMapper.searchTest(outer);
		
		log.info(list);
	}
	
	@Test
	public void testSearchPage() {
		Criteria criteria = new Criteria();
		criteria.setType("TCW");
		criteria.setKeyword("test");

		log.info(criteria);
		List<BoardVO> list = boardMapper.getListWithPage(criteria);
		
		list.forEach(b -> log.info(b));
	}
}
