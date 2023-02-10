package com.mpc.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mpc.consult.model.ConsultModel;
import com.mpc.consult.service.*;

@Controller
public class HomeController {

	@Autowired
	IConsultService consultService;
	//메인페이지
		@RequestMapping(value="/index")
		public String goindex(Model model) {
			List<ConsultModel> consultList = consultService.consultList();
			model.addAttribute("consultList", consultList);
			return "index";
		}
		@RequestMapping(value="/features")
		public String gofeatures() {
			
			return "/features";
		}
	//문진글작성
		@RequestMapping(value="/board/boardWrite")
		public String goboardWrite() {
			
			return "board/boardWrite";
		}

	//고객센터	
		@RequestMapping(value="/service/main")
		public String goservice() {
			
			return "service/main";
		}

		@RequestMapping(value="/service/notice")
		public String gosnotice() {
			
			return "service/notice";
		}
		@RequestMapping(value="/service/noticeInfo")
		public String gonoticeInfo() {
			
			return "service/noticeInfo";
		}
		@RequestMapping(value="/service/Qna")
		public String goQA() {
			
			return "service/Qna";
		}
		@RequestMapping(value="/service/QnaInfo")
		public String goQnaInfo() {
			
			return "service/QnaInfo";
		}
		@RequestMapping(value="/service/QnaWrite")
		public String goQnaWrite() {
			
			return "service/QnaWrite";
		}		
		
	//관리자 페이지
		@RequestMapping(value="/admin/main")
		public String gosadmin() {
			
			return "admin/main";
		}
		
		@RequestMapping(value="/admin/adminUserInfo")
		public String goadminUserInfo() {
			
			return "admin/adminUserInfo";
		}
		@RequestMapping(value="/admin/adminHospitalInfo")
		public String goadminHospitalInfo() {
			
			return "admin/adminHospitalInfo";
		}
		@RequestMapping(value="/admin/adminNotice")
		public String goadminNotice() {
			
			return "admin/adminNotice";
		}
		@RequestMapping(value="/admin/adminNoticeInfo")
		public String goadminNoticeInfo() {
			
			return "admin/adminNoticeInfo";
		}
		@RequestMapping(value="/admin/adminQna")
		public String goadminQna() {
			
			return "admin/adminQna";
		}
		@RequestMapping(value="/admin/adminQnaInfo")
		public String goadminQnaInfo() {
			
			return "admin/adminQnaInfo";
		}
		@RequestMapping(value="/admin/adminReport")
		public String goadminReport() {
			
			return "admin/adminReport";
		}
		@RequestMapping(value="/admin/adminReportInfo")
		public String goadminReportInfo() {
			
			return "admin/adminReportInfo";
		}
		
		
	//로그인	
		@RequestMapping(value="/login/main")
		public String gologin() {
			
			return "login/main";
		}
		@RequestMapping(value="/login/login")
		public String gologintest() {
			
			return "login/login";
		}
		@RequestMapping(value="/img/maintest.png")
		public String getimg() {
			
			return "../../img/maintest.png";
		}
	//회원가입
		@RequestMapping(value="/user/form")
		public String gosignUp() {
			
			return "user/form";
		}
		
	//마이페이지	
		@RequestMapping(value="/mypage/main")
		public String gomypage() {
			
			return "mypage/main";
		}
		@RequestMapping(value="/mypage/myInfo")
		public String gomyInfo() {
			
			return "mypage/myInfo";
		}
}
