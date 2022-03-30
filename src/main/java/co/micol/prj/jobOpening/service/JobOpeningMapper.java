package co.micol.prj.jobOpening.service;

import java.util.List;

public interface JobOpeningMapper {
	List<JobOpeningVO> selectJobOpeningList();  //전체 리스트
	List<JobOpeningVO> selectJobOpeningListByHit(); //조회수 기반 전체리스트
	List<JobOpeningVO> selectJobOpeningListByZzim(); //찜 기반 전체리스트
	List<JobOpeningVO> selectJobOpeningListByPost(String cond); //회사 기반 구인광고 검색
	   JobOpeningVO selectJobOpening(JobOpeningVO vo); //단일 리스트
	   JobOpeningVO selectJobOpeningByNum(JobOpeningVO vo);
	   List<JobOpeningVO> selectRecommendation(String jobGroup);
	   int insertJobOpening(JobOpeningVO vo);      //등록
	   int updateJobOpening(JobOpeningVO vo);      //수정
	   int deleteJobOpening(JobOpeningVO vo);      //삭제
}
