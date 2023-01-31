package com.mpc.board.dao;

import java.util.List;

import com.mpc.board.model.MenuModel;

public interface IBoardMenuRepository {

	int selectMaxMenuId();
	List<MenuModel> selectAllMenu();
	void insertNewMenu(MenuModel menuModel);
	void updateMenu(MenuModel menuModel);
	void deleteMenu(int menuId);
}
