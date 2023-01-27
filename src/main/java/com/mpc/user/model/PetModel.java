package com.mpc.user.model;

import java.sql.Date;

public class PetModel {

	private String petName; //반려동물 이름
	private Date petDate; //반려동물 생일
	private String petSpecies; //반려동물 종
	private String petSex; //반려동물 성별
	private String petBirth; //반려동물 생일
	private String petNeutralize; //중성화 여부
	private String petVacc; // 예방접종 여부
	private String petCharacter; //반려동물 성격
	
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public Date getPetDate() {
		return petDate;
	}
	public void setPetDate(Date petDate) {
		this.petDate = petDate;
	}
	public String getPetSpecies() {
		return petSpecies;
	}
	public void setPetSpecies(String petSpecies) {
		this.petSpecies = petSpecies;
	}
	public String getPetSex() {
		return petSex;
	}
	public void setPetSex(String petSex) {
		this.petSex = petSex;
	}
	public String getPetBirth() {
		return petBirth;
	}
	public void setPetBirth(String petBirth) {
		this.petBirth = petBirth;
	}
	public String getPetNeutralize() {
		return petNeutralize;
	}
	public void setPetNeutralize(String petNeutralize) {
		this.petNeutralize = petNeutralize;
	}
	public String getPetVacc() {
		return petVacc;
	}
	public void setPetVacc(String petVacc) {
		this.petVacc = petVacc;
	}
	public String getPetCharacter() {
		return petCharacter;
	}
	public void setPetCharacter(String petCharacter) {
		this.petCharacter = petCharacter;
	}	
}
