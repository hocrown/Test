package com.mpc.user.model;

import java.sql.Date;

import lombok.Data;

@Data
public class PetModel {
	
	private int	petNo;
	private int	userNo;
	private String petName; //이름
	private Date petFamilyDate; // 생일 가족이 된 날
	private String petSpecies; // 종
	private String petSex; //성별
	private String petNeut; // 중성화
	private String petCharacter; //성격
	private int rnum;
	
}
