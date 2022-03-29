package co.micol.prj.apply.service;

import java.util.List;

public interface ApplyService {
	List<ApplyVO> ApplySelectList();
	List<ApplyVO> ApplySelect(ApplyVO vo);
	int ApplyInsert(ApplyVO vo);
	int ApplyUpdate(ApplyVO vo);
	int ApplyDelete(ApplyVO vo);
}
