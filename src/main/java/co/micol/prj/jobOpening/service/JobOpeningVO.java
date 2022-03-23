package co.micol.prj.jobOpening.service;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class JobOpeningVO {

	private int jobOpeningNum;
	private String companyName;
	private String companyImage;
	private String location;
	private String jobGroup;
	private String companyAddress;
	private int salary;
	private String companyContent;
	private String representative;
	private int employeeNum;
	private String companyBuildDate;
	private String homepage;
	private String jobOpeningHit;
	private int jobOpeningZzim;
	
	@Override
	public String toString() {
		return "JobOpeningVO [jobOpeningNum=" + jobOpeningNum + ", companyName=" + companyName + ", companyImage="
				+ companyImage + ", location=" + location + ", jobGroup=" + jobGroup + ", companyAddress="
				+ companyAddress + ", salary=" + salary + ", companyContent=" + companyContent + ", representative="
				+ representative + ", employeeNum=" + employeeNum + ", companyBuildDate=" + companyBuildDate
				+ ", homepage=" + homepage + ", jobOpeningHit=" + jobOpeningHit + ", jobOpeningZzim=" + jobOpeningZzim
				+ "]";
	}
	
	
}
