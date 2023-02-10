package com.mpc.user.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
//추가한것들

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mpc.consult.model.ConsultModel;
import com.mpc.user.dao.UserRepository;
import com.mpc.user.model.HospitalModel;
import com.mpc.user.model.PetModel;
import com.mpc.user.model.UserModel;
import com.mpc.user.service.IUserService;

@Controller
public class UserController {
	@Autowired
	IUserService userService;

	@Autowired
	UserRepository userRepository;
	
	@RequestMapping(value="/login/main", method=RequestMethod.GET)
	public String login() {
		return "login/main";
	}
	
	@RequestMapping(value="/login/main", method=RequestMethod.POST)
	public String login(String userId, String userPw, HttpSession session, Model model) {
		UserModel userModel = userService.selectUserModel(userId);
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
					session.setAttribute("userNo", userModel.getUserNo());
					int auth = userRepository.userAuthChk(userModel.getUserNo());
					session.setAttribute("auth", auth);
					return "login/main";
				}else {
					//비밀번호 불일치
					model.addAttribute("message", "WRONG_PASSWORD");
				}
			}
		}else {
			model.addAttribute("message", "userNoT_FOUND");
		}
		session.invalidate();	
		return "login/main";
	}
	
	@RequestMapping(value="/main/logout", method=RequestMethod.GET)
	public String logout(HttpSession session, HttpServletRequest request) {
		session.invalidate(); //로그아웃
		return "home";
	}
	
	@RequestMapping(value="/user/signup", method=RequestMethod.GET)
	public String signUp(UserModel user, Model model) {
		List<HospitalModel> hospitalList = userService.selectAllHospitalModel();
		model.addAttribute("hospitalList",hospitalList);
		return "user/form";
	}

	@RequestMapping(value="/mypage/mypet", method=RequestMethod.GET)
	public String showMyPet(String userId) {
		return "mypage/mypet";		
	}
	
	// pet list 불러오기 (문수지 작성) 
	@RequestMapping("/mypage/mypet/{userNo}")
	public String getPetListByUserNo(@PathVariable int userNo, Model model) {
		model.addAttribute("userNo", userNo);
		List<PetModel> petList = userService.selectPetListByUser(userNo);
		model.addAttribute("petList", petList);
		return "mypage/mypet";
	}
	
	// 회원정보 list 불러오기 (문수지 작성)
	@RequestMapping("/admin/adminUser")
	public String getAllUserList(Model model) {
		List<UserModel> userList = userService.selectAllUserModel();
		model.addAttribute("userList", userList);
		return "/admin/adminUser";
	}
	
	// 병원 list 불러오기 (문수지 작성)
	@RequestMapping("/admin/adminHospital")
	public String getAllHospitalList(Model model) {
		List<HospitalModel> hospitalList = userService.selectAllHospitalModel();
		model.addAttribute("hospitalList", hospitalList);
		return "/admin/adminHospital";
	}
	
	//반려동물정보 윤희진
	@RequestMapping(value="/mypage/mypetWrite", method=RequestMethod.GET)
	public String petInsertForm(PetModel pet) {
		return "mypage/mypetWrite";		
	}
	
	
	@RequestMapping(value="/mypage/mypet/insert", method=RequestMethod.POST)
	public String petInsert(PetModel pet, Model model, HttpSession session) { 
		
		int userNo = (int) session.getAttribute("userNo");
		pet.setUserNo(userNo);
		userService.petInsert(pet);
		
		List<PetModel> petList = userService.selectPetListByUser(userNo);
		model.addAttribute("petList", petList);
		
		return "mypage/mypet";
	}
	
	@Transactional
	@RequestMapping(value="/user/insert", method=RequestMethod.POST)
	public String memberInsert(UserModel user, Integer hospitalId, HttpSession session) {
		userService.signup(user);
		String userId = user.getUserId();
		int userNo = userService.selectUserById(userId);
		if(hospitalId != null && hospitalId > 0) {
			String auth = "vet";
			userService.insertCertificateModel(hospitalId, userNo);
			userService.grantAuthUser(userNo, auth);
		}else {
			String auth = "user";
			userService.grantAuthUser(userNo, auth);
		}
		return "home";
	}
		
	@RequestMapping(value="/user/idCheck", method=RequestMethod.POST)
	@ResponseBody //제이슨 사용 시
	public int idCheck(@RequestParam("userId") String userid) {
		UserModel model=new UserModel();
		model.setUserId(userid);
		int result = userService.idChk(model);
		return result;
	}
	

	
	@RequestMapping(value="/mypage/myinfo", method=RequestMethod.POST)
	public String updateUser(UserModel userModel, HttpSession session, Model model) {
	int userNo = (int) session.getAttribute("userNo");
	try{
	userModel.setUserNo(userNo);
	userModel.setUserNickname(userModel.getUserNickname());
	userModel.setUserPhone(userModel.getUserPhone());
	userModel.setUserAddress(userModel.getUserAddress());
	userModel.setUserPostNum(userModel.getUserPostNum());
	userModel.setUserDetailAddress(userModel.getUserDetailAddress());
	userService.updateUserModel(userModel);
	model.addAttribute("userModel", userModel);
	}catch(Exception e) {
	model.addAttribute("message", e.getMessage());
	e.printStackTrace();
	}
	return"mypage/main";
	}	
	//  info 불러오기 (손영석 작성) 
	@RequestMapping("/mypage/myInfo/{userNo}")
	public String info(@PathVariable int userNo, Model model) {
	UserModel user = userService.selectUserInfo(userNo);						
	model.addAttribute("userNo", userNo);
	model.addAttribute("user", user);
	return "mypage/myInfo";
	}
	
	//pet정보 업데이트
	@RequestMapping(value="/mypage/mypetInfo", method=RequestMethod.POST)
	public String updatePet(PetModel petModel, HttpSession session,  Model model) {
	int userNo = (int) session.getAttribute("userNo");
	try{
	petModel.setUserNo(userNo);
	petModel.setPetNo(petModel.getPetNo());
	petModel.setPetName(petModel.getPetName());
	petModel.setPetSpecies(petModel.getPetSpecies());
	petModel.setPetSex(petModel.getPetSex());
	userService.updatePetModel(petModel);
	model.addAttribute("petModel", petModel);
	}catch(Exception e) {
	model.addAttribute("message", e.getMessage());
	e.printStackTrace();
	}
	return"mypage/main";
	}
	
	// pet info 불러오기 (손영석 작성) 
	@RequestMapping("/mypage/mypetInfo/{userNo}/{petNo}")
	public String petinfo(@PathVariable int userNo, @PathVariable int petNo, Model model) {
	PetModel user = userService.selectPetInfo(userNo, petNo);						
	model.addAttribute("userNo", userNo);
	model.addAttribute("user", user);
	return "mypage/mypetInfo";
	}

	//  관리자병원정보 불러오기 (손영석 작성) 
	@RequestMapping("/admin/adminHospitalInfo/{hospitalId}")
	public String selecHInfo(@PathVariable int hospitalId, Model model) {
	HospitalModel hospital = userService.selectHInfo(hospitalId);						
	model.addAttribute("hospitalId", hospitalId);
	model.addAttribute("hospital", hospital);
	return "admin/adminHospitalInfo";
	}
	// 관리자유저정보 불러오기 (손영석 작성) 
	@RequestMapping("/admin/adminUserInfo/{userNo}")
	public String selectAdminUserInfo(@PathVariable int userNo, Model model) {
	UserModel user = userService.selectAdminUserInfo(userNo);						
	model.addAttribute("userNo", userNo);
	model.addAttribute("user", user);
	return "admin/adminUserInfo";
	}
	//마이페이지 의료인
	@RequestMapping(value="/mypage/myconsultDocInfo")
	public String gomyconsultDocInfo() {
		return "mypage/myconsultDocInfo";
	}
	
	@RequestMapping(value="/mypage/myInfoDoc")
	public String gomyInfoDoc() {
		return "mypage/myInfoDoc";
	}

	@RequestMapping(value="/mypage/myhospital")
	public String gomyhospital(Model model, HttpSession session) {
		int userNo = (int) session.getAttribute("userNo");
		List<HospitalModel> hospital = userService.selectHospitalModel(userNo);
		model.addAttribute("hospital", hospital);
		return "mypage/myhospital";
	}
}

