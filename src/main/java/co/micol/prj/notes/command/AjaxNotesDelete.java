package co.micol.prj.notes.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.notes.service.NotesService;
import co.micol.prj.notes.service.NotesVO;
import co.micol.prj.notes.serviceImpl.NotesServiceImpl;

public class AjaxNotesDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		NotesVO vo = new NotesVO(); 
		NotesService dao = new NotesServiceImpl();
		String[] del = (request.getParameterValues("deleteSel"));
		int[] del2 = null;
		for(int i=0; i<del.length; i++) {
			del2[i] = Integer.parseInt(del[i]);
		}
		
		for(int i=0; i<del.length; i++) {
			vo.setNo(del2[i]);
			dao.notesDelete(vo);
		}
		
		MemberVO memberVo = new MemberVO();
		memberVo.setMemberId("sem");		
		//mVo.setMemberId((String)session.getAttribute("memberId"));
		String recvId = memberVo.getMemberId();
		vo.setRecvId(recvId);
		
		List<NotesVO> list = dao.notesSelectList(vo);
		String data = null;
		try {
			data = new ObjectMapper().writeValueAsString(list); //json 객체로 변환
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return "ajax:" + data;
	}

}
