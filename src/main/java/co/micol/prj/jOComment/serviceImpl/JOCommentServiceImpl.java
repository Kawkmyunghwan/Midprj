package co.micol.prj.jOComment.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.prj.common.DataSource;
import co.micol.prj.jOComment.service.JOCommentMapper;
import co.micol.prj.jOComment.service.JOCommentService;
import co.micol.prj.jOComment.service.JOCommentVO;

public class JOCommentServiceImpl implements JOCommentService {
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private JOCommentMapper map = sqlSession.getMapper(JOCommentMapper.class);

	@Override
	public List<JOCommentVO> selectJOCommentList() {
		// TODO Auto-generated method stub
		return map.selectJOCommentList();
	}

	@Override
	public JOCommentVO selectJOComment(JOCommentVO vo) {
		// TODO Auto-generated method stub
		return map.selectJOComment(vo);
	}

	@Override
	public int insertJOComment(JOCommentVO vo) {
		// TODO Auto-generated method stub
		return map.insertJOComment(vo);
	}

	@Override
	public int updateJOComment(JOCommentVO vo) {
		// TODO Auto-generated method stub
		return map.updateJOComment(vo);
	}

	@Override
	public int deleteJOComment(JOCommentVO vo) {
		// TODO Auto-generated method stub
		return map.deleteJOComment(vo);
	}

}
