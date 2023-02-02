package com.mpc.consult.service;

import java.util.List;

import com.mpc.consult.model.ConsultAnswerModel;
import com.mpc.consult.model.ConsultModel;
import com.mpc.consult.model.ConsultUploadFileModel;

public interface IConsultService {
	void report();
	void insertConsult(ConsultModel consult);
	void insertConsult(ConsultModel consult, ConsultUploadFileModel file);
	void consultUpdate(ConsultModel consult);
	List<ConsultModel> selectConsultList();
	List<ConsultModel> selectConsultListByMenu(int menuId);
	ConsultModel selectConsult(int consultingId);
	void replyConsult(ConsultModel consult);
	void replyConsult(ConsultModel consult, ConsultUploadFileModel file);
	ConsultModel selectDeleteConsult(int consultingId);
	void deleteConsult(int consultingId, int replyNumber);
	List<ConsultModel> searchConsultByContentKeyword(String keyword, int page);
	ConsultUploadFileModel getConsultFile(int fileId);
	ConsultAnswerModel selectComment(int consultingId);
	List<ConsultAnswerModel> selectCommentList(int consultingId);
	List<ConsultModel> selectConsultList(int consultingId);
	List<ConsultModel> consultList();
}
