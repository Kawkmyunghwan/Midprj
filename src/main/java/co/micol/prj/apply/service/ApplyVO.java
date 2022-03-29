package co.micol.prj.apply.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ApplyVO {
	private int memberNum;
	private int	jobOpeningNum;
	
	@Override
	public String toString() {
		return "ApplyVO [memberNum=" + memberNum + ", jobOpeningNum=" + jobOpeningNum + "]";
	}
}
