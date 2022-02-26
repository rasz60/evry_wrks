package org.zerock.mapper;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {

	private Long[] bnoArr = { 42L, 41L, 22L, 21L, 20L, 19L };
	
	@Setter(onMethod_= {@Autowired})
	private ReplyMapper rMapper;
	
	@Test
	public void testMapper() {
		log.info(rMapper);
	}
	
	@Test
	public void testInsert() {
		IntStream.rangeClosed(1, 10).forEach(i -> {
			
			ReplyVO vo = new ReplyVO();
			
			vo.setBno(bnoArr[i%5]);
			vo.setReply("댓글 테스트" + i);
			vo.setReplyer("replyer" + i);
			
			rMapper.insert(vo);
			
		});
	}
	
	@Test
	public void testRead() {
		
		Long targetRno = 5L;
		
		ReplyVO vo = rMapper.read(targetRno);
		
		log.info(vo);
	}
	
	@Test
	public void testDelete() {
		
		Long targetRno = 3L;
		
		rMapper.delete(targetRno);
		
	}
	
	@Test
	public void testUpdate() {
		
		Long targetRno = 5L;
		
		ReplyVO vo = rMapper.read(targetRno);
		
		vo.setReply("Update Reply");
		
		int count = rMapper.update(vo);
		
		log.info("UPDATE COUNT : " + count);
		
	}
	
	@Test
	public void testGetList() {
		Criteria cri = new Criteria();
		
		List<ReplyVO> replies = rMapper.getList(cri, bnoArr[0]);
	
		replies.forEach(reply -> log.info(reply));
	}
	
	@Test
	public void testList2() {
		Criteria criteria = new Criteria(2, 10);
		List<ReplyVO> replies = rMapper.getListWithPaging(criteria, 42L);
		
		replies.forEach(reply -> log.info(reply));
	}
	
}
