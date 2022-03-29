package co.micol.prj.jOComment.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class JOCommentVO {
	private int jobOpeningNum;
	private int memberNum;
	private String commentContent;
	private String commentTime;
	
	@Override
	public String toString() {
		return "JOCommentVO [jobOpeningNum=" + jobOpeningNum + ", memberNum=" + memberNum + ", commentContent="
				+ commentContent + ", commentTime=" + commentTime + "]";
	}
	
	
}
