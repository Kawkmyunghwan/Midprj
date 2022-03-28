package co.micol.prj.zzim.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ZzimVO {
	private int memberNum;
	private int jobOpeningNum;
	
	@Override
	public String toString() {
		return "ZzimVO [memberNum=" + memberNum + ", jobOpeningNum=" + jobOpeningNum + "]";
	}
	
	
}
