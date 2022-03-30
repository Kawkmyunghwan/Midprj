package co.micol.prj.notes.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.notes.service.NotesService;
import co.micol.prj.notes.service.NotesVO;
import co.micol.prj.notes.serviceImpl.NotesServiceImpl;

public class NoteDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		NotesVO vo = new NotesVO(); 
		NotesService dao = new NotesServiceImpl();
		vo.setNo(request.getParameter("reSent"));
		dao.notesDelete(vo);
		
		return "notes/noteDeleteSucess";
	}

}
