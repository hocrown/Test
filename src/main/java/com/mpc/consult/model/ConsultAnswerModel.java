package com.mpc.consult.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ConsultAnswerModel {
	private int commentId;
	private int consultingId;
	private int userNo;
	private String commentContent;
	private Timestamp commentDate;
	private int commentLike;
	private int commentReport;
}
