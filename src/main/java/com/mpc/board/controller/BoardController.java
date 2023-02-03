package com.mpc.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mpc.board.model.BoardModel;
import com.mpc.board.model.BoardUploadFileModel;
import com.mpc.board.model.MenuModel;
import com.mpc.board.service.IBoardMenuService;
import com.mpc.board.service.IBoardService;

@Controller
public class BoardController {
	
	@Autowired
	IBoardService boardService;
	
	@Autowired
	IBoardMenuService menuService;
	
	@RequestMapping("/board/menu/{menuId}/{page}")
	public String getListByMenu(@PathVariable int menuId, @PathVariable int page, HttpSession session, Model model) {
		session.setAttribute("page", page);
		model.addAttribute("menuId", menuId);
		List<BoardModel> boardList = boardService.selectBoardListByMenu(menuId, page);
		List<MenuModel> menuList = menuService.selectMenu(menuId);
		List<BoardModel> boardList = boardService.selectBoardListByMenu(menuId, page);	
		model.addAttribute("boardList", boardList);
		model.addAttribute("menuList", menuList);
		
		//paging start
		int bbsCount = boardService.selectTotalBoardCountByMenuId(menuId);
		int totalPage = 0;
		if(bbsCount > 0) {
			totalPage = (int)Math.ceil(bbsCount/10.0);
		}
		model.addAttribute("totalPageCount", totalPage);
		model.addAttribute("page", page);
		return "board/list";
	}
	
	@RequestMapping("/board/menu/{menuId}")
	public String getListByMenu(@PathVariable int menuId, HttpSession session, Model model) {
		return getListByMenu(menuId, 1, session, model);
	}
	
	@RequestMapping("/board/{boardId}/{page}")
	public String getBoardDetails(@PathVariable int boardId, @PathVariable int page, Model model) {
		BoardModel board = boardService.selectBoard(boardId);
		model.addAttribute("board", board);
		model.addAttribute("page", page);
		model.addAttribute("menuId", board.getMenuId());
		return "board/view";
	}
	
	@RequestMapping("/board/{boardId}")
	public String getBoardDetails(@PathVariable int boardId, Model model) {
		return getBoardDetails(boardId, 1, model);
	}
	
	@RequestMapping(value="/board/write/{menuId}", method=RequestMethod.GET)
	public String writeBoard(@PathVariable int menuId, Model model) {
		List<MenuModel> menuList = menuService.selectAllMenu();
		model.addAttribute("menuList", menuList);
		model.addAttribute("menuId", menuId);
		
		System.out.println("menuId1:" + menuId);
		return "board/write";
	}
	
	@RequestMapping(value="/board/write", method=RequestMethod.POST)
	public String writeBoard(BoardModel board, BindingResult result, RedirectAttributes redirectAttrs) {
		System.out.println("menuId2:" + board.getMenuId());
		try {
			board.setBoardContent(board.getBoardContent().replace("\r\n", "<br>"));
			board.setBoardTitle(board.getBoardTitle());
			board.setBoardContent(board.getBoardContent());
			MultipartFile mfile = board.getBoardFile();
			if(mfile!=null && !mfile.isEmpty()) {
				BoardUploadFileModel file = new BoardUploadFileModel();
				file.setFileName(mfile.getOriginalFilename());
				file.setFileSize(mfile.getSize());
				file.setFileType(mfile.getContentType());
				file.setFileData(mfile.getBytes());
				boardService.insertBoard(board, file);
			} else {
				boardService.insertBoard(board);
			}
		} catch(Exception e) {
			e.printStackTrace();
			redirectAttrs.addFlashAttribute("message", e.getMessage());
		}
		return "redirect:/board/menu/"+board.getMenuId();
	}
	
	@RequestMapping("/file/{fileId}")
	public ResponseEntity<byte[]> getFile(@PathVariable int fileId) {
		BoardUploadFileModel file = boardService.getFile(fileId);
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

	@RequestMapping(value="/board/reply/{boardId}", method=RequestMethod.GET)
	public String replyBoard(@PathVariable int boardId, Model model) {
		BoardModel board = boardService.selectBoard(boardId);
		board.setUserId("");
		board.setBoardTitle("[RE]"+board.getBoardTitle());
		board.setBoardContent("\n\n\n----------\n"+board.getBoardContent());
		model.addAttribute("board", board);
		model.addAttribute("next", "reply");
		return "board/reply";
	}
	
	@RequestMapping(value="/board/reply", method=RequestMethod.POST)
	public String replyBoard(BoardModel board, BindingResult result, RedirectAttributes redirectAttrs, HttpSession session) {
		try {
			board.setBoardTitle(board.getBoardTitle());
			board.setBoardContent(board.getBoardContent());
			MultipartFile mfile = board.getBoardFile();
			if(mfile != null && !mfile.isEmpty()) {
				BoardUploadFileModel file = new BoardUploadFileModel();
				file.setFileName(mfile.getOriginalFilename());
				file.setFileSize(mfile.getSize());
				file.setFileType(mfile.getContentType());
				file.setFileData(mfile.getBytes());
				boardService.replyBoard(board, file);
			} else {
				boardService.replyBoard(board);
			}
		} catch(Exception e) {
			e.printStackTrace();
			redirectAttrs.addFlashAttribute("message", e.getMessage());
		}
		
		if(session.getAttribute("page") != null) {
			return "redirect:/board/menu/"+board.getMenuId()+"/"+(Integer)session.getAttribute("page");
		} else {
			return "redirect:/board/menu/"+board.getMenuId();
		}
	}
	
	@RequestMapping(value="/board/update/{menuId}/{boardId}", method=RequestMethod.GET)
	public String updateBoard(@PathVariable int menuId, @PathVariable int boardId, Model model) {
		List<MenuModel> menuList = menuService.selectMenu(menuId);
		model.addAttribute("menuList", menuList);
		BoardModel board = boardService.selectBoard(boardId);
		model.addAttribute("menuId", board.getMenuId());
		model.addAttribute("board", board);
		return "board/update";
	}
	
	@RequestMapping(value="/board/update", method=RequestMethod.POST)
	public String updateBoard(BoardModel board, BindingResult result, RedirectAttributes redirectAttrs) {
		System.out.println(board.getFileId());
		System.out.println(board.getFileName());
		
		try {
			board.setBoardTitle(board.getBoardTitle());
			board.setBoardContent(board.getBoardContent());
			MultipartFile mfile = board.getBoardFile();
			if(mfile != null && !mfile.isEmpty()) {
				BoardUploadFileModel file = new BoardUploadFileModel();
				file.setFileId(board.getFileId());
				file.setFileName(mfile.getOriginalFilename());
				file.setFileSize(mfile.getSize());
				file.setFileType(mfile.getContentType());
				file.setFileData(mfile.getBytes());
				boardService.updateBoard(board, file);
			} else {
				boardService.updateBoard(board);
			}
		} catch(Exception e) {
			e.printStackTrace();
			redirectAttrs.addFlashAttribute("message", e.getMessage());
		}
		return "redirect:/board/"+board.getBoardId();
	}
	
	@RequestMapping(value="/board/delete/{boardId}", method=RequestMethod.GET)
	public String deleteBoard(@PathVariable int boardId, Model model) {
		BoardModel board = boardService.selectDeleteBoard(boardId);
		model.addAttribute("menuId", board.getMenuId());
		model.addAttribute("boardId", boardId);
		model.addAttribute("replyNumber", board.getReplyNum());
		return "board/delete";
	}
	
	@RequestMapping(value="/board/delete", method=RequestMethod.POST)
	public String deleteBoard(BoardModel board, BindingResult result, HttpSession session, Model model) {
		try {
			boardService.deleteBoard(board.getBoardId(), board.getReplyNum());
			return "redirect:/board/menu/"+board.getMenuId()+"/"+(Integer)session.getAttribute("page");
		} catch(Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
			return "error/runtime";
		}
	}
	
	@RequestMapping("/board/search/{menuId}/{page}")
	public String search(@RequestParam(required=false, defaultValue="") String keyword, @PathVariable int menuId, @PathVariable int page, HttpSession session, Model model) {
		try {
			List<BoardModel> boardList = boardService.searchListByContentKeyword(keyword, menuId, page);
			model.addAttribute("boardList", boardList);
			
			// 검색결과 페이징 처리
			int bbsCount = boardService.selectTotalBoardCountByKeyword(keyword);
			int totalPage = 0;
			
			if(bbsCount > 0) {
				totalPage = (int)Math.ceil(bbsCount/10.0);
			}
			model.addAttribute("totalPageCount", totalPage);
			model.addAttribute("page", page);
			model.addAttribute("keyword", keyword);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "board/search";
	}
}
