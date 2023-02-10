package com.mpc.consult.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mpc.consult.dao.IConsultRepository;
import com.mpc.consult.model.ConsultAnswerModel;
import com.mpc.consult.model.ConsultModel;
import com.mpc.consult.model.ConsultUploadFileModel;

@Service
public class ConsultService implements IConsultService {

	@Autowired
	IConsultRepository consultRepository;

	@Override
	public void insertConsult(ConsultModel consult) {
		consult.setConsultingId(consultRepository.selectMaxConsultNo()+1);
		consultRepository.insertConsult(consult);
	}
	
	@Override
	public void insertConsult(ConsultModel consult, ConsultUploadFileModel file) {
		consult.setConsultingId(consultRepository.selectMaxConsultNo()+1);
		consultRepository.insertConsult(consult);
		if(file !=null && file.getFileName() != null && !file.getFileName().equals("")) {
			file.setConsultingId(consult.getConsultingId());
			file.setFileId(consultRepository.selectConsultMaxFileId()+1);
			consultRepository.insertConsultData(file);
		}
	}
	@Override
	public void consultUpdate(ConsultModel consult) {
		consultRepository.updateConsult(consult);
	}

	@Override
	public void deleteConsult(int consultingId, int replyNumber) {
		if(replyNumber==0) {
			consultRepository.deleteConsultByConsultId(consultingId);
		} else {
			throw new RuntimeException("WRONG_NUMBER");
		}
	}

	@Override
	public void report() {
		
	}

	@Override
	public List<ConsultModel> selectConsultListByMenu(int menuId) {
		return consultRepository.selectConsultListByMenu(menuId);
	}

	@Override
	public ConsultModel selectConsult(int consultingId) {
		return consultRepository.selectConsult(consultingId);
	}

	@Override
	public List<ConsultModel> selectConsultList() {
		return consultRepository.selectConsultList();
	}

	@Override
	public void replyConsult(ConsultAnswerModel comment) {
		consultRepository.replyConsult(comment);
	}

	@Override
	public ConsultModel selectDeleteConsult(int consultingId) {
		return consultRepository.selectDeleteConsult(consultingId);
	}

	@Override
	   public ConsultUploadFileModel getConsultFile(int fileId) {
	      return consultRepository.getConsultFile(fileId);
	   }

	@Override
	public ConsultAnswerModel selectComment(int consultingId) {
		return consultRepository.selectComment(consultingId);
	}

	@Override
	public List<ConsultAnswerModel> selectCommentList(int consultingId) {
		return consultRepository.selectCommentList(consultingId);
	}

	@Override
	public List<ConsultModel> selectConsultList(int consultingId) {
		return consultRepository.selectConsultList(consultingId);
	}

	@Override
	public List<ConsultModel> consultList() {
		return consultRepository.consultList();
	}


	@Override
	public List<ConsultModel> searchListByKeyword(String keyword1, String keyword2) {
		return consultRepository.searchListByKeyword(keyword1, keyword2);
	}


	@Override
	public int countLikes(Map<String, Object> params) {
		int count = consultRepository.countLikes(params);
		return count;
	}

	@Override
	public void deleteLike(Map<String, Object> params) {
		consultRepository.deleteLike(params);
	}

	@Override
	public void insertLike(Map<String, Object> params) {
		consultRepository.insertLike(params);
	}

	@Override
	public void undoLike(Map<String, Object> params) {
		consultRepository.undoLike(params);
	}

	@Override
	public void doLike(Map<String, Object> params) {
		consultRepository.doLike(params);
	}

	@Override
	public int updateLikeCount(int commentId) {
		int updatedCount = consultRepository.updateLikeCount(commentId);
		return updatedCount;
	}

	@Override
	public int selectLikes(int commentId) {
		int selectLikes = consultRepository.selectLikes(commentId);
		return selectLikes;
	}

	@Override
	public int selectFollow(int userNo, int loginUserNo) {
		int selectFollow = consultRepository.selectFollow(userNo, loginUserNo);
		return selectFollow;
	}

	@Override
	public void deleteFollow(Map<String, Object> params) {
		consultRepository.deleteFollow(params);
	}

	@Override
	public void insertFollow(Map<String, Object> params) {
		consultRepository.insertFollow(params);
	}
	
	@Override
	public List<ConsultModel> myConsultList(int userNo) {
		return consultRepository.myConsultList(userNo);
	}

	@Override
	public List<ConsultAnswerModel> myCommentList(int userNo) {
		return consultRepository.myCommentList(userNo);
	}

}
