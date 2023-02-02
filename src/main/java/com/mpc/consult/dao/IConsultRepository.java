package com.mpc.consult.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mpc.consult.model.ConsultAnswerModel;
import com.mpc.consult.model.ConsultModel;
import com.mpc.consult.model.ConsultUploadFileModel;

public interface IConsultRepository {
	void insertFileData(ConsultUploadFileModel file);
	List<ConsultModel> selectConsultListByMenu(@Param("menuId") int menuId);
	ConsultModel selectConsult(int consultId);
	ConsultAnswerModel selectComment(int consultingId);
	ConsultUploadFileModel getConsultFile(String fileId);
	void updateReplyNum(int masterId, int replyNumber);
	void updateConsult(ConsultModel consult);
	void updateFileData(ConsultUploadFileModel file);
	void deleteConsultByConsultId(int consultId);
	List<ConsultModel> searchConsultByContentKeyword(@Param("keyword") String keyword, @Param("start") int start, @Param("end") int end);
	void replyConsult(ConsultModel consultId);
	void replyConsult(ConsultModel consult, ConsultUploadFileModel file);
	List<ConsultModel> selectConsultList();
	ConsultModel selectDeleteConsult(int consultingId);
	List<ConsultAnswerModel> selectCommentList(int consultingId);
	List<ConsultModel> selectConsultList(int consultingId);
	void insertConsult(ConsultModel consult);
	List<ConsultModel> consultList();
}