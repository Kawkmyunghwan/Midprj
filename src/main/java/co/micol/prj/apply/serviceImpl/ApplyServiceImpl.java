package co.micol.prj.apply.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.prj.apply.service.ApplyMapper;
import co.micol.prj.apply.service.ApplyService;
import co.micol.prj.apply.service.ApplyVO;
import co.micol.prj.common.DataSource;

public class ApplyServiceImpl implements ApplyService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ApplyMapper map = sqlSession.getMapper(ApplyMapper.class);

	@Override
	public List<ApplyVO> ApplySelectList() {
		// TODO Auto-generated method stub
		return map.ApplySelectList();
	}

	@Override
	public ApplyVO ApplySelect(ApplyVO vo) {
		// TODO Auto-generated method stub
		return map.ApplySelect(vo);
	}

	@Override
	public int ApplyInsert(ApplyVO vo) {
		// TODO Auto-generated method stub
		return map.ApplyInsert(vo);
	}

	@Override
	public int ApplyUpdate(ApplyVO vo) {
		// TODO Auto-generated method stub
		return map.ApplyUpdate(vo);
	}

	@Override
	public int ApplyDelete(ApplyVO vo) {
		// TODO Auto-generated method stub
		return map.ApplyDelete(vo);
	}

	@Override
	public int ApplicationInsert(ApplyVO vo) {
		// TODO Auto-generated method stub
		return map.ApplicationInsert(vo);
	}

}
