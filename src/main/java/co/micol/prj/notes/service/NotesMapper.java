package co.micol.prj.notes.service;

import java.util.List;

public interface NotesMapper {
	List<NotesVO> notesSelectList(NotesVO vo);//쪽지 리스트
	NotesVO notesSelect(NotesVO vo); //쪽지 뷰
	int notesDelete(NotesVO vo);//쪽지 삭제?
	int notesSent(NotesVO vo);//쪽지 보내기
		
}
