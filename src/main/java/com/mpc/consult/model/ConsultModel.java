package com.mpc.consult.model;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ConsultModel {
	
	private int consultingId;
	private int userNo;
	private int petNo;
	private int menuId;
	private Timestamp consultRegDate;
	private String consultTitle;
	private String consultContent;
	private String consultClass;
	
	private MultipartFile consultFile;
	
	private int consReport;
	
	private int fileId; // 파일 아이디
	private String fileName; // 파일 이름
	private long fileSize; // 파일 크기
	private String fileType; // 파일 타입(MIME Type)
	
}
