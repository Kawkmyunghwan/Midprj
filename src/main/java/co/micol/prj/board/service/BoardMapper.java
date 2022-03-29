package co.micol.prj.board.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface BoardMapper {
	List<BoardVO> boardSelectList();
	BoardVO boardSelect(BoardVO vo);
	int boardInsert(BoardVO vo);
	int boardUpdate(BoardVO vo);
	int boardDelete(BoardVO vo);
	int boardUpdateHit(int num);
	List<BoardVO> boardSelectSearchList(@Param("key") String key, @Param("val") String val);
	//검색할 항목, 검색할 내용	
	//넘어온 파라미터 키 값을, String key에 담겠다는 뜻.
	List<BoardVO> boardSortList(String key);
}
