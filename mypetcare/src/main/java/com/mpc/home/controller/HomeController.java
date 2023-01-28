package com.mpc.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value="/board/boardWrite")
	public String goboardWrite() {
		
		return "board/boardWrite";
	}
	@RequestMapping(value="/index")
	public String goindex() {
		
		return "index";
	}
	
	@RequestMapping(value="/service/main")
	public String goservice() {
		
		return "service/main";
	}
	
	@RequestMapping(value="/service/notice")
	public String gosnotice() {
		
		return "service/notice";
	}
	@RequestMapping(value="/service/Q&A")
	public String goQA() {
		
		return "service/Q&A";
	}
	
}
