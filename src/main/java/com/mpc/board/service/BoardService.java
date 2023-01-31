package com.mpc.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mpc.board.dao.IBoardRepository;
import com.mpc.board.model.BoardModel;
import com.mpc.board.model.BoardUploadFileModel;

@Service
public class BoardService implements IBoardService {

	@Autowired
	IBoardRepository boardRepository;
	
	@Transactional
	public void insertBoard(BoardModel board) {
		board.setBoardId(boardRepository.selectMaxBoardNo()+1);
		boardRepository.insertBoard(board);
	}

	@Transactional
	public void insertBoard(BoardModel board, BoardUploadFileModel file) {
		board.setBoardId(boardRepository.selectMaxBoardNo()+1);
		boardRepository.insertBoard(board);
		if(file != null && file.getFileName() != null && !file.getFileName().equals("")) {
			file.setBoardId(board.getBoardId());
			file.setFileId(boardRepository.selectMaxFileId()+1);
			boardRepository.insertFileData(file);
		}
	}

	@Override
	public List<BoardModel> selectBoardListByMenu(int menuId, int page) {
		int start = (page-1)*10 + 1;
		return boardRepository.selectBoardListByMenu(menuId, start, start+9);
		// 오라클은 BETWEEN a AND b 에서 a와 b 모두 포함하므로 9를 더함
	}

	@Override
	public List<BoardModel> selectBoardListByMenu(int menuId) {
		return boardRepository.selectBoardListByMenu(menuId, 0, 100);
	}

	@Transactional
	public BoardModel selectBoard(int boardId) {
		boardRepository.updateReadCount(boardId);
		return boardRepository.selectBoard(boardId);
	}

	@Override
	public BoardUploadFileModel getFile(int fileId) {
		return boardRepository.getFile(fileId);
	}

	@Transactional
	public void replyBoard(BoardModel board) {
		boardRepository.updateReplyNum(board.getMasterId(), board.getReplyNum());
		board.setBoardId(boardRepository.selectMaxBoardNo()+1);
		board.setReplyNum(board.getReplyNum()+1);
		boardRepository.replyBoard(board);

	}

	@Transactional
	public void replyBoard(BoardModel board, BoardUploadFileModel file) {
		boardRepository.updateReplyNum(board.getMasterId(), board.getReplyNum());
		board.setBoardId(boardRepository.selectMaxBoardNo()+1);
		board.setReplyNum(board.getReplyNum()+1);
		boardRepository.replyBoard(board);
		if(file != null && file.getFileName() != null && !file.getFileName().equals("")) {
			file.setBoardId(board.getBoardId());
			file.setFileId(boardRepository.selectMaxFileId()+1);
			boardRepository.insertFileData(file);
		}
	}

	@Override
	public void updateBoard(BoardModel board) {
		boardRepository.updateBoard(board);
	}

	@Transactional
	public void updateBoard(BoardModel board, BoardUploadFileModel file) {
		boardRepository.updateBoard(board);
		if(file != null && file.getFileName() != null && !file.getFileName().equals("")) {
			file.setBoardId(board.getBoardId());
			
			if(file.getFileId()>0) {
				boardRepository.updateFileData(file);
			} else {
				boardRepository.insertFileData(file);
			}
		}
	}

	@Override
	public BoardModel selectDeleteBoard(int boardId) {
		return boardRepository.selectDeleteBoard(boardId);
	}

	@Transactional
	public void deleteBoard(int boardId, int replyNum) {
		if(replyNum>0) {
			boardRepository.deleteReplyFileData(boardId);
			boardRepository.deleteBoardByBoardId(boardId);
		} else if(replyNum==0) {
			boardRepository.deleteFileData(boardId);
			boardRepository.deleteBoardByMasterId(boardId);
		} else {
			throw new RuntimeException("WRONG_REPLYNUMBER");
		}
	}

	@Override
	public int selectTotalBoardCount() {
		return boardRepository.selectTotalBoardCount();
	}

	@Override
	public int selectTotalBoardCountByMenuId(int menuId) {
		return boardRepository.selectTotalBoardCountByMenuId(menuId);
	}

	@Override
	public List<BoardModel> searchListByContentKeyword(String keyword, int page) {
		int start = (page-1)*10 + 1;
		return boardRepository.searchListByContentKeyword("%"+keyword+"%", start, start+9);
	}

	@Override
	public int selectTotalBoardCountByKeyword(String keyword) {
		return boardRepository.selectTotalBoardCountByKeyword("%"+keyword+"%");
	}

}
