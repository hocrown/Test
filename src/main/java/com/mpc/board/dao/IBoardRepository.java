package com.mpc.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mpc.board.model.BoardModel;
import com.mpc.board.model.BoardUploadFileModel;

public interface IBoardRepository {

	int selectMaxBoardNo();
	int selectMaxFileId();
	
	void insertBoard(BoardModel board);
	void insertFileData(BoardUploadFileModel file);
	
	List<BoardModel> selectBoardListByMenu(@Param("menuId") int menuId, @Param("start") int start, @Param("end") int end);
	
	BoardModel selectBoard(int boardId);
	BoardUploadFileModel getFile(int fileId);
	
	void updateReadCount(int boardId);
	
	void updateReplyNum(@Param("masterId") int masterId, @Param("replyNum") int replyNum);
	void replyBoard(BoardModel boardId);
	
	String getPassword(int boardId); // 필요한가?
	
	void updateBoard(BoardModel board);
	void updateFileData(BoardUploadFileModel file);
	
	void deleteFileData(int boardId);
	void deleteReplyFileData(int boardId);
	BoardModel selectDeleteBoard(int boardId);
	void deleteBoardByBoardId(int boardId);
	void deleteBoardByMasterId(int boardId);
	
	int selectTotalBoardCount();
	int selectTotalBoardCountByMenuId(int menuId);
	
	List<BoardModel> searchListByContentKeyword(@Param("keyword") String keyword, @Param("start") int start, @Param("end") int end);
	int selectTotalBoardCountByKeyword(String keyword);
}
