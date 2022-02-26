package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.BoardService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@RequestMapping("/board/")
@Log4j
public class BoardController {
	
	private final BoardService service;
	
	/*
	 * @GetMapping("/list") public void list(Model model) {
	 * model.addAttribute("list", service.getList());
	 * log.info("list-----------------------"); }
	 */

	@GetMapping("/list")
	public void list(Criteria criteria, Model model) {
		log.info("list-----------------------");
		
		model.addAttribute("list", service.getList(criteria));
		model.addAttribute("pageMaker", new PageDTO(criteria, service.getTotalCount(criteria)));
	}
	
	@GetMapping("/register")
	public void registerGET() {
		log.info("resiterGET()");
	}
	
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		log.info("board: " + board);
		Long bno = service.register(board);
		log.info("Bno : " + bno);
		
		// post 방식으로 넘어온 데이터 작업 처리 완료 후에는 redirect 방식으로 다음페이지로 이동시킨다.
		// 처리하지 않으면 post 방식으로 넘어온 데이터 작업을 계속해서 반복처리한다.
		rttr.addFlashAttribute("result", bno);
		// redirect된 페이지로 데이터를 넘겨준다. addFlashAttribute는 림크에 표시되지 않고 전달, addAttribute는 링크에 표시된다.
		return "redirect:/board/list";
	}
	
	@PostMapping("/modify")
	public String modify(BoardVO board, Criteria criteria, RedirectAttributes rttr) {
		int result = service.modify(board);
		
		if(result == 1) {
			rttr.addFlashAttribute("result", "modify success");
		}
		
		rttr.addAttribute("pageNum", criteria.getPageNum());
		rttr.addAttribute("amonut", criteria.getAmount());
		
		return "redirect:/board/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr) {
		int result = service.remove(bno);
		
		if ( result == 1) {
			rttr.addFlashAttribute("result","remove success");
		}
		
		return "redirect:/board/list";
	}
	
	@GetMapping({"/read", "/modify"})	
	public void read(@RequestParam("bno") Long bno, Criteria criteria, Model model) {
		log.info("read---------------------");
		model.addAttribute("board", service.get(bno));
	}
}
