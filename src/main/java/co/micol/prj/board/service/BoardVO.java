package co.micol.prj.board.service;



import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BoardVO {
	private int boardNum;
	private String boardName;
	private String boardWriter;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date boardDate;
	private String boardContents;
	private int boardHit;
	private String boardComment;
}
