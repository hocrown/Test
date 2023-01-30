package com.mpc.consult.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mpc.consult.model.ConsultModel;
import com.mpc.consult.model.ConsultUploadFileModel;

public interface IConsultRepository {
	void InsertConsult(ConsultModel consult);
	void InsertFileData(ConsultUploadFileModel file);
	List<ConsultModel> selectConsultListByCategory(@Param("categoryId") int categoryId, @Param("start") int start, @Param("end") int end);
	ConsultModel selectConsult(String consultId);
	ConsultUploadFileModel getFile(String fileId);
	void updateReplyNum(int masterId, int replyNumber);
	void replyConsult(ConsultModel consultId);
	void updateConsult(ConsultModel consult);
	void updateFileData(ConsultUploadFileModel file);
	void deleteFileData(int consultId);
	void deleteReplyFileData(int consultId);
	ConsultModel selectConsultBoard(int consultId);
	void deleteConsultByConsultId(int consultId);
	List<ConsultModel> searchListByContentKeyword(@Param("keyword") String keyword, @Param("start") int start, @Param("end") int end);
	int selectTotalConsultCountByKeyword(String keyword);
}