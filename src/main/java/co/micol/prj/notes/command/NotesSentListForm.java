package co.micol.prj.notes.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.notes.service.NotesService;
import co.micol.prj.notes.service.NotesVO;
import co.micol.prj.notes.serviceImpl.NotesServiceImpl;

public class NotesSentListForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NotesVO vo = new NotesVO();
		NotesService dao = new NotesServiceImpl();
		HttpSession session = request.getSession();
		
		
		vo.setSentId((String)session.getAttribute("memberId"));
		
	    request.setAttribute("notes", dao.notesSentList(vo));
	    
		return "notes/notesSentListForm";
	}

}
