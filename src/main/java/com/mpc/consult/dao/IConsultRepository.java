package com.mpc.consult.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.mpc.consult.model.ConsultAnswerModel;
import com.mpc.consult.model.ConsultModel;
import com.mpc.consult.model.ConsultUploadFileModel;

public interface IConsultRepository {
	void insertFileData(ConsultUploadFileModel file);
	List<ConsultModel> selectConsultListByMenu(@Param("menuId") int menuId);
	ConsultModel selectConsult(int consultId);
	ConsultAnswerModel selectComment(int consultingId);
	ConsultUploadFileModel getConsultFile(int fileId);
	int selectMaxConsultNo();
	void updateReplyNum(int masterId, int replyNumber);
	void updateConsult(ConsultModel consult);
	void updateFileData(ConsultUploadFileModel file);
	void deleteConsultByConsultId(int consultId);
	void replyConsult(ConsultAnswerModel comment);
	List<ConsultModel> selectConsultList();
	ConsultModel selectDeleteConsult(int consultingId);
	List<ConsultAnswerModel> selectCommentList(int consultingId);
	List<ConsultModel> selectConsultList(int consultingId);
	void insertConsult(ConsultModel consult);
	List<ConsultModel> consultList();
	List<ConsultModel> searchListByKeyword(@Param("keyword1") String keyword1,@Param("keyword2") String keyword2);
	void deleteLike(Map<String, Object> params);
	int countLikes(Map<String, Object> params);
	void insertLike(Map<String, Object> params);
	void doLike(Map<String, Object> params);
	void undoLike(Map<String, Object> params);
	int updateLikeCount(int commentId);
	int selectLikes(int commentId);
	int selectFollow(@Param("followee")int userNo, @Param("follower") int loginUserNo);
	void deleteFollow(Map<String, Object> params);
	void insertFollow(Map<String, Object> params);
	void insertConsultData(ConsultUploadFileModel file);
	int selectConsultMaxFileId();
	List<ConsultModel> myConsultList(int userNo);
	List<ConsultAnswerModel> myCommentList(int userNo);
	
}