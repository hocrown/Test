package com.mpc.user.controller;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
//추가한것들
import org.springframework.dao.DuplicateKeyException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//import org.mybatis.logging.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mpc.user.model.UserModel;
import com.mpc.user.service.IMemberService;
import com.mpc.user.service.IUserService;
import com.mpc.user.service.UserServic;
import com.mpc.user.service.UserServiceImpl;

@Controller
public class UserController {
	static final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Autowired
	IUserService userServic;
//	@RequestMapping(value ="/" )

	@RequestMapping(value="/login/main", method=RequestMethod.GET)
	public String login() {
		return "login/main";
	}
	
	@RequestMapping(value="/login/main", method=RequestMethod.POST)
	public String login(String userId, String userPw, HttpSession session, Model model) {
		UserModel userModel = userServic.selectUserModel(userId);
		if(userModel != null) {
			String dbPassword = userModel.getUserPw();
				if(dbPassword == null) {
				//아이디가 없음
				model.addAttribute("message", "NOT_VALID_USER");
			}else {
				//아이디 있음
				if(dbPassword.equals(userPw)) {
					//비밀번호 일치
					session.setAttribute("userId", userId);
				
					
					return "login/main";
				}else {
					//비밀번호 불일치
					model.addAttribute("message", "WRONG_PASSWORD");
				}
			}
		}else {
			model.addAttribute("message", "USER_NOT_FOUND");
		}
		session.invalidate();	
		return "login/main";
	}
	
	@RequestMapping(value="/main/logout", method=RequestMethod.GET)
	public String logout(HttpSession session, HttpServletRequest request) {
		session.invalidate(); //로그아웃
		return "index";
	}
	
	

}

