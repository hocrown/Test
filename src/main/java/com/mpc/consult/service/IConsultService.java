package com.mpc.consult.service;

import java.util.List;

import com.mpc.consult.model.ConsultModel;
import com.mpc.consult.model.ConsultUploadFileModel;

public interface IConsultService {
	void report();
	void insertConsult(ConsultModel consult);
	void insertConsult(ConsultModel consult, ConsultUploadFileModel file);
	void consultUpdate(ConsultModel consult);
	List<ConsultModel> selectConsutlListByCategory(int categoryId, int page);
	List<ConsultModel> selectConsultListByCategory(int categoryId);
	
	ConsultModel selectConsult(int consultingId);
	
	ConsultUploadFileModel getFile(int fileId);
	
	void replyConsult(ConsultModel consult);
	void replyConsult(ConsultModel consult, ConsultUploadFileModel file);
	
	ConsultModel selectDeleteConsult(int consultingId);
	void deleteConsult(int consultingId, int replyNumber);
	List<ConsultModel> searchConsultByContentKeyword(String keyword, int page);
}
