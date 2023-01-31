package com.mpc.board.service;


import java.util.List;

import com.mpc.board.model.BoardModel;
import com.mpc.board.model.BoardUploadFileModel;

public interface IBoardService {

	void insertBoard(BoardModel boardId);
	void insertBoard(BoardModel boardId, BoardUploadFileModel file);
	
	List<BoardModel> selectBoardListByMenu(int menuId, int page);
	List<BoardModel> selectBoardListByMenu(int menuId);
	
	BoardModel selectBoard(int boardId);
	BoardUploadFileModel getFile(int fileId);
	
	void replyBoard(BoardModel board);
	void replyBoard(BoardModel board, BoardUploadFileModel file);
	
	void updateBoard(BoardModel board);
	void updateBoard(BoardModel board, BoardUploadFileModel file);
	
	BoardModel selectDeleteBoard(int boardId);
	void deleteBoard(int boardId, int replyNum);
	
	int selectTotalBoardCount();
	int selectTotalBoardCountByMenuId(int menuId);
	
	List<BoardModel> searchListByContentKeyword(String keyword, int page);
	int selectTotalBoardCountByKeyword(String keyword);
}
