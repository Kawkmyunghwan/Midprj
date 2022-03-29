package co.micol.prj.notes.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.notes.service.NotesService;
import co.micol.prj.notes.service.NotesVO;
import co.micol.prj.notes.serviceImpl.NotesServiceImpl;

public class NoteViewForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NotesService dao = new NotesServiceImpl();
		NotesVO vo = new NotesVO();
		
		vo.setNo(request.getParameter("notesNo"));
		request.setAttribute("note", dao.notesSelect(vo));
		
		
		
		return "notes/notesView";
	}

}
