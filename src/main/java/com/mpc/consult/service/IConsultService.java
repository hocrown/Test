package com.mpc.consult.service;

import java.util.List;
import java.util.Map;

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
	void replyConsult(ConsultAnswerModel comment);
	ConsultModel selectDeleteConsult(int consultingId);
	void deleteConsult(int consultingId, int replyNumber);
	ConsultUploadFileModel getConsultFile(int fileId);
	ConsultAnswerModel selectComment(int consultingId);
	List<ConsultAnswerModel> selectCommentList(int consultingId);
	List<ConsultModel> selectConsultList(int consultingId);
	List<ConsultModel> consultList();
	List<ConsultModel> searchListByKeyword(String keyword1, String keyword2);
	int countLikes(Map<String, Object> params);
	void deleteLike(Map<String, Object> params);
	void insertLike(Map<String, Object> params);
	void undoLike(Map<String, Object> params);
	void doLike(Map<String, Object> params);
	int updateLikeCount(int commentId);
	int selectLikes(int commentId);
	int selectFollow(int userNo, int loginUserNo);
	void deleteFollow(Map<String, Object> params);
	void insertFollow(Map<String, Object> params);
	List<ConsultModel> myConsultList(int userNo);
	List<ConsultAnswerModel> myCommentList(int userNo);
}
