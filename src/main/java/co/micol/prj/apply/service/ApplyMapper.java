package co.micol.prj.apply.service;

import java.util.List;

public interface ApplyMapper {
	List<ApplyVO> ApplySelectList();
	ApplyVO ApplySelect(ApplyVO vo);
	int ApplyInsert(ApplyVO vo);
	int ApplicationInsert(ApplyVO vo);
	int ApplyUpdate(ApplyVO vo);
	int ApplyDelete(ApplyVO vo);
}
