package com.mpc.consult.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mpc.board.model.BoardModel;
import com.mpc.board.model.BoardUploadFileModel;
import com.mpc.board.model.MenuModel;
import com.mpc.consult.model.ConsultAnswerModel;
import com.mpc.consult.model.ConsultModel;
import com.mpc.consult.model.ConsultUploadFileModel;
import com.mpc.consult.service.IConsultService;
import com.mpc.user.dao.UserRepository;
import com.mpc.user.model.PetModel;
import com.mpc.user.model.UserModel;
import com.mpc.user.service.IUserService;

@Controller
public class ConsultController {
	@Autowired
	IConsultService consultService;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	IUserService userService;
	
	@RequestMapping(value="/consult/writeform")
	public String consultWriteForm(Model model, HttpSession session) {
		List<PetModel> userPet = userService.selectPetListByUser((int) session.getAttribute("userNo"));
		model.addAttribute("userPet", userPet);
		return "consult/write";
	}
	
	@RequestMapping(value="/consult/write", method=RequestMethod.POST)
	   public String consultWrite(ConsultModel consult, BindingResult result, Model model, HttpSession session, RedirectAttributes redirectAttrs) {
	      
	      int userNo = (int) session.getAttribute("userNo");
	      try {
	         
	         consult.setUserNo(userNo);
	         consult.setConsultTitle(consult.getConsultTitle());
	         consult.setConsultContent(consult.getConsultContent());
	         consult.setPetNo(consult.getPetNo());
	         consult.setConsultClass(consult.getConsultClass());
	         consult.setConsultRegDate(consult.getConsultRegDate());
	         MultipartFile cfile = consult.getConsultFile();
	         if(cfile!=null && !cfile.isEmpty()) {
	            ConsultUploadFileModel file = new ConsultUploadFileModel();
	            file.setFileName(cfile.getOriginalFilename());
	            file.setFileSize(cfile.getSize());
	            file.setFileType(cfile.getContentType());
	            file.setFileData(cfile.getBytes());
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
	public String getConsultDetails(@PathVariable int consultingId, Model model, HttpSession session) {
		
		UserModel user = userRepository.selectUserModel((String) session.getAttribute("userId"));
		ConsultModel consult = consultService.selectConsult(consultingId);
		PetModel pet = userService.selectPet(consult.getPetNo());
		
		model.addAttribute("userNickname", user.getUserNickname());
		
		int auth = userRepository.userAuthChk(user.getUserNo());
		System.out.println(auth);
		List<ConsultAnswerModel> commentList = consultService.selectCommentList(consultingId);
		model.addAttribute("commentList",commentList);
		model.addAttribute("pet",pet);
		model.addAttribute("petSpecies", pet.getPetSpecies());
		model.addAttribute("consult", consult);
		model.addAttribute("auth", auth);
		
		return "consult/view";
	}
	
	//문진글 파일 업로드
   @RequestMapping("/cfile/{fileId}")
   public ResponseEntity<byte[]> getFile(@PathVariable int fileId) {
      ConsultUploadFileModel file = consultService.getConsultFile(fileId);
      // 파일을 클라이언트로 전송하기 위해 전송정보를 담을 헤더 설정
      final HttpHeaders headers = new HttpHeaders();
      String[] mtypes = file.getFileType().split("/");
      // 전송헤더에 파일 정보와 확장자를 세팅
      headers.setContentType(new MediaType(mtypes[0], mtypes[1]));
      // 전송헤더에 파일 용량을 세팅
      headers.setContentLength(file.getFileSize());
      // 전송헤더에 파일명을 세팅
      headers.setContentDispositionFormData("attachment", file.getFileName());
      return new ResponseEntity<byte[]>(file.getFileData(), headers, HttpStatus.OK);
   }


	//답변 작성 폼으로 consultingId 파라미터로 가진 채 forwarding.(윤준호) 
	@RequestMapping(value="/consult/reply/{consultingId}", method=RequestMethod.GET)
	public String replyConsultForm(@PathVariable int consultingId, Model model) {
		ConsultModel consult = consultService.selectConsult(consultingId);
		model.addAttribute("consultingId", consultingId);
		model.addAttribute("consultTitle",consult.getConsultTitle());
		
		
		return "consult/replyform";
	}
	
	@RequestMapping(value="/consult/replyinsert", method=RequestMethod.POST)
	public String replyConsult(ConsultAnswerModel comment, BindingResult result, Model model, RedirectAttributes redirectAttrs, HttpSession session) {
		try {
		comment.setConsultingId(comment.getConsultingId());
		comment.setUserNo((int) session.getAttribute("userNo"));
		comment.setCommentContent(comment.getCommentContent());
		consultService.replyConsult(comment);
		}catch(Exception e) {
			e.printStackTrace();
			redirectAttrs.addFlashAttribute("message", e.getMessage());
		}
		List<ConsultAnswerModel> commentList = consultService.selectCommentList(comment.getConsultingId());
		model.addAttribute("commentList",commentList);
		
		return "redirect:/consult/view/"+comment.getConsultingId();
	}
	
	@RequestMapping(value="/consult/update/{consultingId}", method=RequestMethod.GET)
	public String updateConsult(@PathVariable int consultingId, Model model) {
		return null;
	}
	

	@RequestMapping(value="/consult/list")
	public String consultList(Model model) {
		List<ConsultModel> consultList = consultService.consultList();
		model.addAttribute("consultList", consultList);
		return "index";
	}
	
	@RequestMapping("/consult/search")
	public String search(@RequestParam(required=false, defaultValue="") String keyword1, @RequestParam(required=false, defaultValue="") String keyword2, HttpSession session, Model model) {
		String url = "index";
		try {
			List<ConsultModel> consultList = consultService.searchListByKeyword(keyword1, keyword2);
			if(consultList.size()==0) {
				url = "noResult";
			} else {
			model.addAttribute("consultList", consultList);
			model.addAttribute("keyword1", keyword1);
			model.addAttribute("keyword2", keyword2);
			}
			} catch(Exception e) {
			e.printStackTrace();
		}
		return url;
	}
	
	@Transactional
	@PostMapping("/consult/like")
	public ResponseEntity<Map<String, Object>> toggleLike(@RequestParam int commentId, HttpSession session) {
	    Map<String, Object> params = new HashMap<>();
	    int userNo = (int) session.getAttribute("userNo");
	    params.put("userNo", userNo);
	    params.put("commentId", commentId);
	    int count = consultService.countLikes(params);
	    int selectLike = consultService.selectLikes(commentId);
	    Map<String, Object> response = new HashMap<>();
	    if (count > 0) {
	        consultService.deleteLike(params);
	        consultService.undoLike(params);
	        response.put("result", "true");
	        response.put("likeCount", selectLike - 1);
	        return ResponseEntity.ok(response);
	    } else {
	        consultService.insertLike(params);
	        consultService.doLike(params);
	        response.put("result", "false");
	        response.put("likeCount", selectLike + 1);
	        return ResponseEntity.ok(response);
	    }
	}
	
	//좋아요 상태 확인 메소드.
	@GetMapping("/consult/like/status")
	public ResponseEntity<Map<String, Object>> getLikeStatus(@RequestParam int commentId, HttpSession session) {
	    Map<String, Object> params = new HashMap<>();
	    int userNo = (int) session.getAttribute("userNo");
	    params.put("userNo", userNo);
	    params.put("commentId", commentId);
	    int count = consultService.countLikes(params);
	    int selectLike = consultService.selectLikes(commentId);
	    Map<String, Object> response = new HashMap<>();
	    response.put("liked", count > 0);
	    response.put("likeCount", selectLike);
	    return ResponseEntity.ok(response);
	}
	
	@GetMapping("/like-count")
	public int getLikeCount(@RequestParam int commentId) {
		Map<String, Object> params = new HashMap<>();
	    params.put("commentId", commentId);
	    return consultService.countLikes(params);
	  }
	
	@Transactional
	@PostMapping("/consult/follow")
	public ResponseEntity<Map<String, Object>> toggleFollow(@RequestParam int userNo, HttpSession session) {
	    Map<String, Object> params = new HashMap<>();
	    int loginUserNo = (int) session.getAttribute("userNo");
	    params.put("followee", userNo);
	    params.put("follower", loginUserNo);
	    int selectFollow = consultService.selectFollow(userNo, loginUserNo);
	    Map<String, Object> response = new HashMap<>();
	    if (selectFollow> 0) {
	        consultService.deleteFollow(params);
	        response.put("result", "true");
	        return ResponseEntity.ok(response);
	    } else {
	        consultService.insertFollow(params);
	        response.put("result", "false");
	        return ResponseEntity.ok(response);
	    }
	}
	
	//좋아요 상태 확인 메소드.
	@GetMapping("/consult/follow/status")
	public ResponseEntity<Map<String, Object>> getFollowStatus(@RequestParam int userNo, HttpSession session) {
	    Map<String, Object> params = new HashMap<>();
	    int loginUserNo = (int) session.getAttribute("userNo");
	    params.put("followee", userNo);
	    params.put("follower", loginUserNo);
	    int selectFollow = consultService.selectFollow(userNo, loginUserNo);
	    Map<String, Object> response = new HashMap<>();
	    response.put("followed", selectFollow > 0);
	    return ResponseEntity.ok(response);
	}
	
	@RequestMapping(value="/consult/view/mypage/{consultingId}", method=RequestMethod.GET)
	public String getMyConsultDetails(@PathVariable int consultingId, Model model, HttpSession session) {
		
		UserModel user = userRepository.selectUserModel((String) session.getAttribute("userId"));
		ConsultModel consult = consultService.selectConsult(consultingId);
		PetModel pet = userService.selectPet(consult.getPetNo());
		
		model.addAttribute("userNickname", user.getUserNickname());
		
		int auth = userRepository.userAuthChk(user.getUserNo());
		List<ConsultAnswerModel> commentList = consultService.selectCommentList(consultingId);
		model.addAttribute("commentList",commentList);
		model.addAttribute("pet",pet);
		model.addAttribute("petSpecies", pet.getPetSpecies());
		model.addAttribute("consult", consult);
		model.addAttribute("auth", auth);
		
		return "/mypage/myconsultDetail";
	}
	
	@RequestMapping("/mypage/myconsult")
	public String goMypageConsult(Model model, HttpSession session) {
		int userNo =(int) session.getAttribute("userNo");
		List<ConsultModel> consultList = consultService.myConsultList(userNo);
		model.addAttribute("consultList", consultList);
		return "/mypage/myconsult";
	}
	
	@RequestMapping("/mypage/myconsultDoc")
	public String goMyconsultDoc(Model model, HttpSession session) {
		int userNo =(int) session.getAttribute("userNo");
		List<ConsultAnswerModel> commentList = consultService.myCommentList(userNo);
		model.addAttribute("commentList", commentList);
		return "/mypage/myconsultDoc";
	}
}

