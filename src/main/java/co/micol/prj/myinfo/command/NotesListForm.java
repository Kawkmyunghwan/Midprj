package co.micol.prj.myinfo.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.notes.service.NotesService;
import co.micol.prj.notes.service.NotesVO;
import co.micol.prj.notes.serviceImpl.NotesServiceImpl;

public class NotesListForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 쪽지함 이동		
		NotesVO vo = new NotesVO();
		NotesService dao = new NotesServiceImpl();
		HttpSession session = request.getSession();
		
		
		vo.setRecvId((String)session.getAttribute("memberId"));
		
	    request.setAttribute("notes", dao.notesSelectList(vo));
		
		return "myInfo/noteList";
	}

}
