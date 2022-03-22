package co.micol.prj.jobOpening.service;

import java.util.List;

import co.micol.prj.member.service.MemberVO;

public interface JobOpeningMapper {
	List<JobOpeningVO> selectJobOpeningList();  //전체 리스트
	   MemberVO selectJobOpening(JobOpeningVO vo); //단일 리스트
	   int insertJobOpening(JobOpeningVO vo);      //등록
	   int updateJobOpening(JobOpeningVO vo);      //수정
	   int deleteJobOpening(JobOpeningVO vo);      //삭제
}