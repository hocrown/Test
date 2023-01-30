package com.mpc.consult.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mpc.consult.dao.IConsultRepository;
import com.mpc.consult.model.ConsultModel;
import com.mpc.consult.model.ConsultUploadFileModel;

@Service
public class ConsultService implements IConsultService {

	@Autowired
	IConsultRepository consultRepository;

	@Override
	public void insertConsult(ConsultModel consult) {
		consultRepository.InsertConsult(consult);
	}
	
	@Override
	public void insertConsult(ConsultModel consult, ConsultUploadFileModel file) {
		
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
	public List<ConsultModel> selectConsutlListByCategory(int categoryId, int page) {
		int start = (page-1)*10 + 1;
		return consultRepository.selectConsultListByCategory(categoryId, start, start+9);
	}

	@Override
	public List<ConsultModel> selectConsultListByCategory(int categoryId) {
		return consultRepository.selectConsultListByCategory(categoryId, 0, 100);
		
	}

	@Override
	public ConsultModel selectConsult(int consultingId) {
		
	}

	@Override
	public ConsultUploadFileModel getFile(int fileId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void replyConsult(ConsultModel consult) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void replyConsult(ConsultModel consult, ConsultUploadFileModel file) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ConsultModel selectDeleteConsult(int consultingId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ConsultModel> searchConsultByContentKeyword(String keyword, int page) {
		// TODO Auto-generated method stub
		return null;
	}
}
