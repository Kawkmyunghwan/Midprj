package co.micol.prj.notes.service;

import java.util.List;

public interface NotesService {
	List<NotesVO> notesSelectList(NotesVO vo);// 받은 쪽지함
	
	List<NotesVO> notesSentList(NotesVO vo); // 보낸 쪽지함

	NotesVO notesSelect(NotesVO vo); // 쪽지 뷰

	int notesDelete(NotesVO vo);// 쪽지 삭제?

	int notesSent(NotesVO vo);// 쪽지 보내기

	
}
