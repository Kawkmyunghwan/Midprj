package co.micol.prj.companyInfo.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter

public class CompanyVO {
	private int JOBOPENINGNUM; //번호
	private String COMPANYNAME; //이름
	private String COMPANYIMAGE; //이미지
	private String JOBGROUP; //직군
	private String COMPANYADDRESS; //주소
	private int SALARY; //연봉
	private String COMPANYCONTENT; //소개글
	private String REPRESENTATIVE; //대표
	private int EMPLOYEENUM; //직원수
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date COMPANYBUILDDATE; //설립일
	private String HOMEPAGE; //홈페이지 주소
	
}
