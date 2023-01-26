package com.mpc.board.model;

import lombok.Data;

@Data
public class MenuModel {

	private int menuId; // 메뉴아이디
	private String menuName; // 메뉴명
	private String menuUrl; // 메뉴URL
	private int parentMenuId; // 부모메뉴아이디
	private String menuDescript; // 메뉴설명
}
