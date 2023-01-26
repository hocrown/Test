package com.mpc.board.model;

import lombok.Data;
import lombok.ToString;

@Data
@ToString(exclude = "fileData") // fileData 변수는 toString() 메서드 리턴 값에 포함X
public class BoardUploadFileModel {

	private String fileId; // 파일 아이디
	private String boardId; // 게시글 아이디
	private String fileName; // 파일 이름
	private long fileSize; // 파일 크기
	private String fileType; // 파일 타입(MIME Type)
	private byte[] fileData; // 파일 데이터
}
