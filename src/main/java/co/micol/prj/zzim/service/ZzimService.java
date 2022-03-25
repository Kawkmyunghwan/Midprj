package co.micol.prj.zzim.service;

import java.util.List;

public interface ZzimService {
	List<ZzimVO> selectZzimList(); //찜 기반 전체리스트
	   ZzimVO selectZzim(ZzimVO vo); //단일 리스트   
	   int insertZzim(ZzimVO vo);//등록
	   int updateZzim(ZzimVO vo);//수정
	   int deleteZzim(ZzimVO vo);//삭제
}
