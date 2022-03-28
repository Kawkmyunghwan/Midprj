package co.micol.prj.notes.service;

import java.util.List;

public interface NotesService {
List<NotesVO> notesSelectList(NotesVO vo);//쪽지 리스트
int notesDelete(NotesVO vo);//쪽지 삭제?
int notesSent(NotesVO vo);//쪽지 보내기
int noteView(NotesVO vo);//쪽지 보기	
}
