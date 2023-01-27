package com.mpc.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Test {

	@RequestMapping(value="/board/boardWrite")
	public String boardWrite() {
		
		return "board/boardWrite";
	}
	@RequestMapping(value="/index")
	public String goindex() {
		
		return "index";
	}

	
	
}
