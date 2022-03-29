package co.micol.prj.notes.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class NotesVO {
private String no;
private String recvId;
private String sentId;
private String title;
private String note;
@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
private Date dateSent; 	
}
