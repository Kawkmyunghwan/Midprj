package co.micol.prj.jobOpening.service;

import java.util.List;

public interface JobOpeningService {
	List<JobOpeningVO> selectJobOpeningList();  //전체 리스트
	List<JobOpeningVO> selectJobOpeningListByHit(); //조회수 기반 전체리스트
	List<JobOpeningVO> selectJobOpeningListByZzim(); //찜 기반 전체리스트
	   JobOpeningVO selectJobOpening(JobOpeningVO vo); //단일 리스트
	   JobOpeningVO selectJobOpeningByNum(JobOpeningVO vo);

}
