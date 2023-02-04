package com.mpc.consult.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mpc.board.model.BoardModel;
import com.mpc.board.model.BoardUploadFileModel;
import com.mpc.board.model.MenuModel;
import com.mpc.consult.model.ConsultAnswerModel;
import com.mpc.consult.model.ConsultModel;
import com.mpc.consult.model.ConsultUploadFileModel;
import com.mpc.consult.service.IConsultService;

@Controller
public class ConsultController {
	@Autowired
	IConsultService consultService;
	
	
	@RequestMapping(value="/consult/writeform")
	public String consultWriteForm() {
		return "consult/write";
	}
	
	@RequestMapping(value="/consult/write", method=RequestMethod.POST)
	public String consultWrite(ConsultModel consult, BindingResult result, Model model, HttpSession session, RedirectAttributes redirectAttrs) {
		
		int userNo = (int) session.getAttribute("userNo");
		try {
			
			consult.setUserNo(userNo);
			consult.setConsultTitle(consult.getConsultTitle());
			consult.setConsultContent(consult.getConsultContent());
//			consult.setPetId(consult.getPetId());		유저 로그인 시 해당 유저의 petId 가져오기. view 단에서 선택시 petId 선택 가능
//			consult.setConsultClass(consult.getConsultClass());		뷰 단에서 가져와야 함.
			consult.setConsultRegDate(consult.getConsultRegDate());
			MultipartFile cfile = consult.getConsultFile();
			if(cfile!=null && !cfile.isEmpty()) {
				ConsultUploadFileModel file = new ConsultUploadFileModel();
				consultService.insertConsult(consult, file);
			}else {
				consultService.insertConsult(consult);
			}
		}catch(Exception e) {
			e.printStackTrace();
			redirectAttrs.addFlashAttribute("message", e.getMessage());
		}
		List<ConsultModel> consultList = consultService.consultList();
		model.addAttribute("consultList", consultList);
		
		return "index";
	}
	
	@RequestMapping(value="/consult/view/{consultingId}", method=RequestMethod.GET)
	public String getConsultDetails(@PathVariable int consultingId, Model model) {
		List<ConsultModel> consultList = consultService.selectConsultList(consultingId);
		List<ConsultAnswerModel> commentList = consultService.selectCommentList(consultingId);
		
		model.addAttribute("consultList", consultList);
		model.addAttribute("commentList", commentList);
		return "consult/view";
	}
	
	@RequestMapping("/consult/menu/list")
	public String getConsultList(HttpSession session, Model model) {
		List<ConsultModel> consultList = consultService.consultList();
		model.addAttribute("consultList", consultList);
		return "consult/index";
	}
	
	@RequestMapping("/consult/menu/{menuId}")
	public String getConsultListByMenu(@PathVariable int menuId, HttpSession session, Model model) {
		model.addAttribute("menuId", menuId);
		
		List<ConsultModel> consultList = consultService.selectConsultListByMenu(menuId);
		model.addAttribute("consultList", consultList);
		return "consult/list";
		
	}
	

	@RequestMapping(value="/consult/reply/{consultingId}", method=RequestMethod.GET)
	public String replyConsult(@PathVariable int consultingId, ConsultAnswerModel comment, BindingResult result, Model model, RedirectAttributes redirectAttrs, HttpSession session) {
		ConsultModel consult = consultService.selectConsult(consultingId);
		try {
			comment.setConsultingId(consult.getConsultingId());
			comment.setCommentContent(comment.getCommentContent());
			comment.setCommentDate(comment.getCommentDate());
		}catch(Exception e) {
			e.printStackTrace();
			redirectAttrs.addFlashAttribute("message", e.getMessage());
		}
		return "redirect:/consult/"+consult.getMenuId();
	}
	
	@RequestMapping(value="/consult/update/{consultingId}", method=RequestMethod.GET)
	public String updateConsult(@PathVariable int consultingId, Model model) {
		
		return null;//mypage로 이동? 작성글로 이동?
	}
	
	
	
}

