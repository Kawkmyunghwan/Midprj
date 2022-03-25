package co.micol.prj.comments.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.prj.comments.service.CommentsMapper;
import co.micol.prj.comments.service.CommentsService;
import co.micol.prj.comments.service.CommentsVO;
import co.micol.prj.common.DataSource;


public class CommentsServiceImpl implements CommentsService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CommentsMapper map = sqlSession.getMapper(CommentsMapper.class);
	
	@Override
	public List<CommentsVO> commentsSelectList() {
		return map.commentsSelectList();
	}

	@Override
	public int commentsInsert(CommentsVO vo) {
		return map.commentsInsert(vo);
	}

	@Override
	public int commentsUpdate(CommentsVO vo) {
		return map.commentsUpdate(vo);
	}

	@Override
	public int commentsDelete(CommentsVO vo) {
		return map.commentsDelete(vo);
	}

	@Override
	public CommentsVO commentsSelect(CommentsVO vo) {
		return map.commentsSelect(vo);
	}

}
