package co.micol.prj.jOComment.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class JOCommentVO {
	private String commentContent;
	private String commentTime;
	private String memberName;
	private int memberNum;
	private int jobOpeningNum;
	@Override
	public String toString() {
		return "JOCommentVO [commentContent=" + commentContent + ", commentTime=" + commentTime + ", memberName="
				+ memberName + "]";
	}
	
	
	
	
}
