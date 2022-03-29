package co.micol.prj.notes.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.prj.common.DataSource;
import co.micol.prj.notes.service.NotesMapper;
import co.micol.prj.notes.service.NotesService;
import co.micol.prj.notes.service.NotesVO;

public class NotesServiceImpl implements NotesService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private NotesMapper map = sqlSession.getMapper(NotesMapper.class);
	
	@Override
	public List<NotesVO> notesSelectList(NotesVO vo) {
		
		return map.notesSelectList(vo);
	}

	@Override
	public int notesDelete(NotesVO vo) {
		// TODO Auto-generated method stub
		return map.notesDelete(vo);
	}

	@Override
	public int notesSent(NotesVO vo) {
		// TODO Auto-generated method stub
		return map.notesSent(vo);
	}

		
	@Override
	public NotesVO notesSelect(NotesVO vo) {
		// TODO Auto-generated method stub
		return map.notesSelect(vo);
	}
	

}
