package com.mpc.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
//메인페이지
	@RequestMapping(value="/index")
	public String goindex() {
		
		return "index";
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
	@RequestMapping(value="/admin/adminUser")
	public String goadminUser() {
		
		return "admin/adminUser";
	}
	
	@RequestMapping(value="/admin/adminUserInfo")
	public String goadminUserInfo() {
		
		return "admin/adminUserInfo";
	}
	@RequestMapping(value="/admin/adminHospital")
	public String goadminHospital() {
		
		return "admin/adminHospital";
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
	@RequestMapping(value="/member/login")
	public String gologintest() {
		
		return "member/login";
	}

	@RequestMapping(value="/member/form")
	public String goformtest() {
		
		return "member/form";
	}
/*	@RequestMapping(value="/img/maintest.png")
	public String getimg() {
		
		return "../../img/maintest.png";
	}*/
//회원가입
	@RequestMapping(value="/signUp/main")
	public String gosignUp() {
		
		return "signUp/main";
	}
	

	
//마이페이지	
	@RequestMapping(value="/mypage/main")
	public String gomypage() {
		
		return "mypage/main";
	}	
	@RequestMapping(value="/mypage/mypet")
	public String gomypet() {
		
		return "mypage/mypet";
	}
	@RequestMapping(value="/mypage/mypetInfo")
	public String gomypetInfo() {
		
		return "mypage/mypetInfo";
	}
	@RequestMapping(value="/mypage/mypetWrite")
	public String gomypetWrite() {
		
		return "mypage/mypetWrite";
	}
	@RequestMapping(value="/mypage/myconsult")
	public String gomyconsult() {
		
		return "mypage/myconsult";
	}
	@RequestMapping(value="/mypage/myconsultInfo")
	public String gomymyconsultInfo() {
		
		return "mypage/myconsultInfo";
	}
	@RequestMapping(value="/mypage/myfollowH")
	public String gomyfollowH() {
		
		return "mypage/myfollowH";
	}
	@RequestMapping(value="/mypage/myfollowHInfo")
	public String gomyfollowHInfo() {
		
		return "mypage/myfollowHInfo";
	}
	@RequestMapping(value="/mypage/myscrap")
	public String gomyscrap() {
		
		return "mypage/myscrap";
	}
	@RequestMapping(value="/mypage/myscrapInfo")
	public String gomyscrapInfo() {
		
		return "mypage/myscrapInfo";
	}
	@RequestMapping(value="/mypage/myInfo")
	public String gomyInfo() {
		
		return "mypage/myInfo";
	}
//마이페이지 의료인
	@RequestMapping(value="/mypage/myconsultDoc")
	public String gomyconsultDoc() {
		
		return "mypage/myconsultDoc";
	}
	@RequestMapping(value="/mypage/myconsultDocInfo")
	public String gomyconsultDocInfo() {
		
		return "mypage/myconsultDocInfo";
	}
	@RequestMapping(value="/mypage/myInfoDoc")
	public String gomyInfoDoc() {
		
		return "mypage/myInfoDoc";
	}
	@RequestMapping(value="/mypage/myhospital")
	public String gomyhospital() {
		
		return "mypage/myhospital";
	}
}
