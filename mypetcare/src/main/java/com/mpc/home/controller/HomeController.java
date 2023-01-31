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
	
	@RequestMapping(value="/admin/main")
	public String gosadmin() {
		
		return "admin/main";
	}
	@RequestMapping(value="/admin/userInfo")
	public String gosuserInfo() {
		
		return "admin/userInfo";
	}
	@RequestMapping(value="/admin/hospitalInfo")
	public String goshospitalInfo() {
		
		return "admin/hospitalInfo";
	}
	@RequestMapping(value="/admin/noticeInfo")
	public String gosnoticeInfo() {
		
		return "admin/noticeInfo";
	}
	@RequestMapping(value="/admin/Q&AInfo")
	public String goQAInfo() {
		
		return "admin/Q&AInfo";
	}
	@RequestMapping(value="/admin/report")
	public String goreport() {
		
		return "admin/report";
	}
	@RequestMapping(value="/login/main")
	public String gologin() {
		
		return "login/main";
	}
	@RequestMapping(value="/signUp/main")
	public String gosignUp() {
		
		return "signUp/main";
	}
	@RequestMapping(value="/img/maintest.png")
	public String getimg() {
		
		return "../../img/maintest.png";
	}
}
