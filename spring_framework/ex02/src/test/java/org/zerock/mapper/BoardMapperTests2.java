package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;

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
}
