package co.micol.prj.board.service;

import java.util.List;

public interface BoardService {
	List<BoardVO> boardSelectList();
	BoardVO boardSelect(BoardVO vo);
	int boardInsert(BoardVO vo);
	int boardUpdate(BoardVO vo);
	int boardDelete(BoardVO vo);
	int boardUpdateHit(int num);
	List<BoardVO> boardSelectSearchList(String key, String val);
	//검색할 항목, 검색할 내용
	List<BoardVO> boardSortList(String key);
}
