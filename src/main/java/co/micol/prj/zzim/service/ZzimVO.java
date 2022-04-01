package co.micol.prj.zzim.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ZzimVO {
	private int memberNum;
	private int jobOpeningNum;
	private String memberId;
	
	@Override
	public String toString() {
		return "ZzimVO [memberNum=" + memberNum + ", jobOpeningNum=" + jobOpeningNum + ", memberId=" + memberId + "]";
	}
}
