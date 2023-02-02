package com.mpc.consult.service;

import java.util.List;

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
		consultRepository.insertConsult(consult);
	}
	
	@Override
	public void insertConsult(ConsultModel consult, ConsultUploadFileModel file) {
		consultRepository.insertConsult(consult);
		if(file !=null && file.getFileName() != null && !file.getFileName().equals("")) {
			file.setConsultingId(consult.getConsultingId());
			consultRepository.insertFileData(file);
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
			throw new RuntimeException("WRONG_REPLYNUMBER");
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
	public void replyConsult(ConsultModel consult) {
		consultRepository.replyConsult(consult);
	}

	@Override
	public void replyConsult(ConsultModel consult, ConsultUploadFileModel file) {
		consultRepository.replyConsult(consult, file);
	}

	@Override
	public ConsultModel selectDeleteConsult(int consultingId) {
		return consultRepository.selectDeleteConsult(consultingId);
	}

	@Override
	public List<ConsultModel> searchConsultByContentKeyword(String keyword, int page) {
		int start = (page-1)*10 +1;
		return consultRepository.searchConsultByContentKeyword("%"+keyword+"%", start, start+9);
	}

	@Override
	public ConsultUploadFileModel getConsultFile(int fileId) {
		return null;
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

}
