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
	private int commentNumber;
	
	@Override
	public String toString() {
		return "JOCommentVO [commentContent=" + commentContent + ", commentTime=" + commentTime + ", memberName="
				+ memberName + ", memberNum=" + memberNum + ", jobOpeningNum=" + jobOpeningNum + ", commentNumber="
				+ commentNumber + "]";
	}	
	
	
	
}
