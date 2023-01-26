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
	
	BoardModel selectBoard(String boardId);
	BoardUploadFileModel getFile(String fileId);
	
	void updateReplyNum(@Param("masterId") int masterId, @Param("replyNum") int replyNum);
	void replyBoard(BoardModel boardId);
	
	String getPassword(String boardId);
	
	void updateBoard(BoardModel board);
	void updateFiledata(BoardUploadFileModel file);
	
	void deleteFileData(String boardId);
	void deleteReplyFileData(String boardId);
	BoardModel selectDeleteBoard(String boardId);
	void deleteBoardByBoardId(String boardId);
	void deleteBoardByMasterId(String boardId);
	
	int selectTotalArticleCount();
	int selectTotalArticleCountByCategoryId(int menuId);
	
	List<BoardModel> searchListByContentKeyword(@Param("keyword") String keyword, @Param("start") int start, @Param("end") int end);
	int selectTotalBoardCountByKeyword(String keyword);
}
