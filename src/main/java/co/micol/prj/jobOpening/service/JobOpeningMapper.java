package co.micol.prj.jobOpening.service;

import java.util.List;

public interface JobOpeningMapper {
	List<JobOpeningVO> selectJobOpeningList();  //전체 리스트
	List<JobOpeningVO> selectJobOpeningListByHit(); //조회수 기반 전체리스트
	List<JobOpeningVO> selectJobOpeningListByZzim(); //찜 기반 전체리스트
	List<JobOpeningVO> selectJobOpeningListByPost(String cond); //회사 기반 구인광고 검색
	List<JobOpeningVO> selectLocationList(String location); //지역 기반 구인광고 검색
	List<JobOpeningVO> selectJobOpeningListByMyzzim(int co); //찜 기반 전체리스트
	List<JobOpeningVO> selectJobOpeningListByZzimTop4();
	   JobOpeningVO selectJobOpening(JobOpeningVO vo); //단일 리스트
	   JobOpeningVO selectJobOpeningByNum(JobOpeningVO vo);
	   List<JobOpeningVO> selectRecommendation(String jobGroup);
	   int insertJobOpening(JobOpeningVO vo);      //등록
	   int jobOpeningUpdateHit(int hit);      	   //조회수 증가
	   int deleteJobOpening(JobOpeningVO vo);      //삭제
}
