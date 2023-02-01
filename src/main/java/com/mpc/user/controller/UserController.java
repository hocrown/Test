package com.mpc.user.controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mpc.user.model.UserModel;
import com.mpc.user.service.UserServiceImpl;

@Controller
public class UserController {
	
	@Autowired
	UserServiceImpl userService;
	
	@RequestMapping(value="/user/signup", method=RequestMethod.GET)
	public String signup() {
		return "user/form";
	}
	
	
	@RequestMapping(value="/user/signup2", method=RequestMethod.GET)
	public String signup2() {
		return "user/petForm";
	}
	
	/*
	 * @RequestMapping(value="/user/idChk", method=RequestMethod.POST) public int
	 * idChk(UserModel model) throws Exception { int result =
	 * userService.idChk(model); return result; }
	 */
	
	@RequestMapping(value="/user/login", method=RequestMethod.GET)
	public String login(String userId) {
		return "user/login";		
	}
	
	@RequestMapping(value="/user/insert", method=RequestMethod.POST)
	public String memberInsert(UserModel user, HttpSession session) {
		userService.signup(user);
		session.invalidate();
		return "index";
	}
		
	@RequestMapping(value="/user/idCheck", method=RequestMethod.POST)
	@ResponseBody
	public int idCheck(@RequestParam("userid") String userid) {
		UserModel model=new UserModel();
		model.setUserId(userid);
		int result = userService.idChk(model);
		return result;
	}

}

