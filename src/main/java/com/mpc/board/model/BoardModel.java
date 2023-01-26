package com.mpc.board.model;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BoardModel {

	private String boardId;
	private int menuId;
	private String userId;
	private int masterId;
	private Timestamp boardDate;
	private int readCount;
	private String boardTitle;
	private String boardContent;
	private int replyNum;
	
	private int page;
	
	private MultipartFile boardFile;
	
	private int boardReport;
	
	private String fileId; // 파일 아이디
	private String fileName; // 파일 이름
	private long fileSize; // 파일 크기
	private String fileType; // 파일 타입(MIME Type)
}
