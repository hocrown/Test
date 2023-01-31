package com.mpc.consult.model;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ConsultModel {
	
	private String consultingId;
	private String userId;
	private String petId;
	private int menuId;
	private Timestamp consDate;
	private String consTitle;
	private String consContents;
	private int consCategory;
	private MultipartFile consFile;
	private int consReport;
	private int replyNum;
}
