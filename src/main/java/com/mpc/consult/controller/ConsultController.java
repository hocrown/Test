package com.mpc.consult.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mpc.consult.model.ConsultModel;
import com.mpc.consult.model.ConsultUploadFileModel;
import com.mpc.consult.service.IConsultService;

@Controller
public class ConsultController {
	@Autowired
	IConsultService consultService;
	
	
	@RequestMapping("/consult/")
	public String consultWrite(ConsultModel consult, BindingResult result, RedirectAttributes redirectAttrs) {
		try {
			consult.setConsTitle(consult.getConsTitle());
			consult.setConsContents(consult.getConsContents());
			consult.setPetId(consult.getPetId());
			consult.setConsCategory(consult.getConsCategory());
			consult.setConsDate(consult.getConsDate());
			MultipartFile cfile = consult.getConsFile();
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
		return "redirect:/consult/cat/"+consult.getMenuId();
	}
}

