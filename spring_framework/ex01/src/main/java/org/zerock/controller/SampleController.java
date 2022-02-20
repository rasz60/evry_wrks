package org.zerock.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.zerock.domain.SampleDTO;
import org.zerock.domain.SampleDTOList;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/sample/*")
@Log4j
public class SampleController {
	
	@RequestMapping("")
	public void basic() {
		log.info("basic.....");
	}
	
	@GetMapping("/basicGET")
	public void basicGET() {
		log.info("basicGET.....");
	}
	
	@GetMapping("/ex01")
	public void ex01(SampleDTO dto) {
		log.info(dto);
	}
	
	@GetMapping("/ex02")
	public void ex02(@RequestParam("name") String name, int age) {
		log.info(name);
		log.info(age);
	}
	
	@GetMapping("/ex02List")
	public String ex02List(@RequestParam("ids") ArrayList<String> ids) {
		log.info("ids : " + ids);
		return "ex02List";
	}
	
	
	@GetMapping("/ex02Bean")
	//메서드의 파라미터는 뷰페이지로 전달된다. 뷰페이지에서 해당 값을 쓰는 이름을 정할때, ModelAttribute("name") 사용
	//Model은 client에서 controller로 넘어온 값이 아닌 내부에서 생성된 값을 전달할 때 담아서 보낸다.
	public String ex02Bean(@ModelAttribute("sample") SampleDTOList list /*, Model model*/) {
		log.info(list);
	//	model.addAttribute("result", "success");
		return "sample/ex02Bean";
	}
	
	@GetMapping("/re1")
	public String exre1() {
		log.info("re1");
		
		// return 페이지로 rediect:/를 붙여주면 내용을 수행 후 해당 페이지로 이동 (default는 forward 방식으로 이동함)
		return "redirect:/sample/re2";
	}
	
	@GetMapping("/re2")
	public void exre2() {
		log.info("re2");
	}
	
	@GetMapping("/exUpload")
	public void exUpload() {
		log.info("exUpload");
	}
	
	@PostMapping("/exUploadPost")
	public void exUploadPost(ArrayList<MultipartFile> files) {
		files.forEach( file -> {
			log.info(file.getOriginalFilename());
			log.info(file.getSize());
			log.info(file.getContentType());
		});
	}
}
