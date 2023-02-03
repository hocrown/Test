package com.mpc.board.service;

import java.util.List;

import com.mpc.board.model.MenuModel;

public interface IBoardMenuService {

	List<MenuModel> selectAllMenu();
	List<MenuModel> selectMenu(int menuId);
	void insertNewMenu(MenuModel menumodel);
	void updateMenu(MenuModel menumodel);
	void deleteMenu(int menuId);
}
