package co.micol.prj.notes.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.notes.service.NotesService;
import co.micol.prj.notes.service.NotesVO;
import co.micol.prj.notes.serviceImpl.NotesServiceImpl;

public class NoteInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NotesService dao = new NotesServiceImpl();
		NotesVO vo = new NotesVO();
		HttpSession session = request.getSession();
		
		vo.setSentId((String)session.getAttribute("memberId"));
		vo.setTitle(request.getParameter("title"));
		vo.setRecvId(request.getParameter("recvId"));
		vo.setNote(request.getParameter("note"));
		
		//System.out.println(""+vo.getRecvId()+vo.getTitle()+vo.getSentId()+vo.getNote());
		
		int n = dao.notesSent(vo);
		return "notes/noteInsertSucess.tiles";
	}

}
