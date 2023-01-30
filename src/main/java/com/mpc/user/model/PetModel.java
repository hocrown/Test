package com.mpc.user.model;

import java.sql.Date;

public class PetModel {

			private int pet_No;
			private int user_no;
			private String petName;
			private Date petFamilyDate; 
			private String petSpecies; 
			private String petSex;
			private String petNEUT;
			private String petCharacter;
			
			public int getPet_No() {
				return pet_No;
			}
			public void setPet_No(int pet_No) {
				this.pet_No = pet_No;
			}
			public int getUser_no() {
				return user_no;
			}
			public void setUser_no(int user_no) {
				this.user_no = user_no;
			}
			public String getPetName() {
				return petName;
			}
			public void setPetName(String petName) {
				this.petName = petName;
			}
			public Date getPetFamilyDate() {
				return petFamilyDate;
			}
			public void setPetFamilyDate(Date petFamilyDate) {
				this.petFamilyDate = petFamilyDate;
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
			public String getPetNEUT() {
				return petNEUT;
			}
			public void setPetNEUT(String petNEUT) {
				this.petNEUT = petNEUT;
			}
			public String getPetCharacter() {
				return petCharacter;
			}
			public void setPetCharacter(String petCharacter) {
				this.petCharacter = petCharacter;
			}
				
}
