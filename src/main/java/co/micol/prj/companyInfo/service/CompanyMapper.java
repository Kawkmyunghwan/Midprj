package co.micol.prj.companyInfo.service;

import java.util.List;

public interface CompanyMapper {
	List<CompanyVO> CompanySelectList(); //전체조회
	CompanyVO CompanySelect(CompanyVO vo); //단건
	int CompanyInsert(CompanyVO vo); //등록
	int CompanyUpdate(CompanyVO vo); //수정
	int CompanyDelete(CompanyVO vo); //삭제
}