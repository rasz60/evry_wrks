package org.zerock.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.SampleVO;
import org.zerock.domain.Ticket;

import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/sample")
@Log4j
public class SampleController {

	@GetMapping(value="/getText", produces="text/plain; charset=UTF-8")
	public String getText() {
		log.info("MIME TYPE : " + MediaType.TEXT_PLAIN_VALUE);
		
		return "안녕하세요";
	}
									//produces 생략 가능 (미디어 타입을 받아서 표현할 dependency 필요)
	@GetMapping(value="/getSample", produces = { MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE })
	public SampleVO getSample() {
		return new SampleVO(112, "스타", "로드");
	}
	
	@GetMapping(value="/getList")
	public List<SampleVO> getList() {
		List<SampleVO> list = new ArrayList<SampleVO>();
		
		for ( int i = 1; i < 10; i++ ) {
			SampleVO sample = new SampleVO(i, i + " First", i + " Last");
			list.add(sample);
		}		
		
		return list;
		
		/* 
		 고수의 방식...
		 
		 return IntStream.range(1, 10)
						 .mapToObj(i -> new SampleVO(i, i + " First", i + " Last"))
						 .collect(Collectors.toList());
		*/
	}
	
	@GetMapping(value="/getMap")
	public Map<String, SampleVO> getMap() {
		Map<String, SampleVO> map = new HashMap<>();
		map.put("First", new SampleVO(1, "그루트", "주니어"));
		
		return map;
	}
	
	@GetMapping(value="/check", params={ "height", "weight" })
	public ResponseEntity<SampleVO> check(Double height, Double weight) {
		SampleVO vo = new SampleVO(0, ""+height, ""+weight);
		
		// 객체 혹은 데이터의 유효성 체크
		ResponseEntity<SampleVO> result = null;
		
		if( height < 150 ) {
									//조건에 맞지 않을 경우, 502(에러)와 데이터를 반환
			result = ResponseEntity.status(HttpStatus.BAD_GATEWAY).body(vo);
		} else { 
									//조건에 맞을 경우, 200(정상) 데이터를 반환
			result = ResponseEntity.status(HttpStatus.OK).body(vo);
		}
		
		return result;
		
	}
	
	@GetMapping("/product/{cat}/{pid}")
	public String[] getPath( @PathVariable("cat") String cat, 
							 @PathVariable("pid") Integer pid) {
		
		return new String[] { "category : " + cat , "productId : " + pid };
	}
	
	@PostMapping("/ticket")
	public void convert(@RequestBody Ticket ticket) {
		log.info("convert......" + ticket);
	
	}
	
	
}
