package com.mpc.consult.model;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ConsultModel {
	
	private int consultingId;
	private int userId;
	private int petId;
	private int menuId;
	private Timestamp consultRegDate;
	private String consultTitle;
	private String consultContent;
	private String consultClass;
	private MultipartFile consultFile;
	private int consReport;
}
