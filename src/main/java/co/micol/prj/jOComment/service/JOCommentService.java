package co.micol.prj.jOComment.service;

import java.util.List;


public interface JOCommentService {
	List<JOCommentVO> selectJOCommentList();  //전체 리스트	
		JOCommentVO selectJOComment(JOCommentVO vo); //단일 리스트
		int insertJOComment(JOCommentVO vo);      //등록
		int updateJOComment(JOCommentVO vo);      //수정
		int deleteJOComment(JOCommentVO vo);      //삭제
}
