package co.micol.prj.apply.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ApplyVO {
	private int memberNum;
	private int	jobOpeningNum;
	private String memberId;
	private String memberEmail;
	private String title;
	private String content;
	private String companyName;
	private int salary;
	private String companyAddress;
	private String companyImage;
	
	@Override
	public String toString() {
		return "ApplyVO [memberNum=" + memberNum + ", jobOpeningNum=" + jobOpeningNum + ", memberId=" + memberId
				+ ", memberEmail=" + memberEmail + ", title=" + title + ", content=" + content + ", companyName="
				+ companyName + ", salary=" + salary + ", companyAddress=" + companyAddress + ", companyImage="
				+ companyImage + "]";
	}
	
	
	
}
