package co.micol.prj.member.service;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MemberVO {
private String memberId;
private String memberPassword;
private String memberName;
private String memberPhone;
private String memberGrade;
private int subscription;
private int memberNum;
private String memberEmail;
private String favorite;
private int secession;

@Override
public String toString() {
	return "MemberVO [memberId=" + memberId + ", memberPassword=" + memberPassword + ", memberName=" + memberName
			+ ", memberPhone=" + memberPhone + ", memberGrade=" + memberGrade + ", subscription=" + subscription
			+ ", memberNum=" + memberNum + ", memberEmail=" + memberEmail + ", favorite=" + favorite + "]";
}



}