package co.micol.prj.comments.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class CommentsVO {
	private int commentsNum;
	private int boardNum;
	private String memberId;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date commentsDate;
	private String commentsContent;
}
