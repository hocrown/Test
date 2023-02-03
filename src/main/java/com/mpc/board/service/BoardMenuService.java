package com.mpc.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mpc.board.dao.IBoardMenuRepository;
import com.mpc.board.model.MenuModel;

@Service
public class BoardMenuService implements IBoardMenuService {

	@Autowired
	IBoardMenuRepository boardMenuRepository;
	
	@Override
	public List<MenuModel> selectMenu(int menuId) {
		return boardMenuRepository.selectMenu(menuId);
	}

	@Override
	public void insertNewMenu(MenuModel menumodel) {
		int newMenueId = boardMenuRepository.selectMaxMenuId()+1;
		menumodel.setMenuId(newMenueId);
		boardMenuRepository.insertNewMenu(menumodel);
	}

	@Override
	public void updateMenu(MenuModel menumodel) {
		boardMenuRepository.updateMenu(menumodel);
	}

	@Override
	public void deleteMenu(int menuId) {
		boardMenuRepository.deleteMenu(menuId);
	}

	@Override
	public List<MenuModel> selectAllMenu() {
		return boardMenuRepository.selectAllMenu();
	}

}
