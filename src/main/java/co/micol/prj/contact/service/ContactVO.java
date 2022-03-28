package co.micol.prj.contact.service;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter

public class ContactVO {

	private int infoNum;
	private String infoName;
	private String infoWriter;

	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date infoDate;
	private int infoHit;
	private String infoAnswerContent;
	private String isAnswer;
	private String infoTitle;

}
