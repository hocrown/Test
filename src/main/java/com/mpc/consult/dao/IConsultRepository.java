package com.mpc.consult.dao;

import java.util.List;

import com.mpc.consult.model.ConsultModel;
import com.mpc.consult.model.ConsultUploadFileModel;

public interface IConsultRepository {
	public void InsertConsult(ConsultModel consult);
	public void InsertFileData(ConsultUploadFileModel file);
	public <E> List<E> selectConsultListByMenu(int menuId, int start, int end);
	public ConsultModel selectConsult(String consultId);
	public ConsultUploadFileModel getFile(String fileId);
	public void updateReplyNum(int masterId, int replyNumber);
	public void replyConsult(ConsultModel consultId);
	public void updateConsult(ConsultModel consult);
	public void updateFileData(ConsultUploadFileModel file);
	public void deleteFileData(int consultId);
	public void deleteReplyFileData(int consultId);
	public ConsultModel selectConsultBoard(int consultId);
	public void deleteConsultByConsultId(int consultId);
	public List searchListByContentKeyword(String keyword, int start, int end);
	public int selectTotalConsultCountByKeyword(String keyword);
}