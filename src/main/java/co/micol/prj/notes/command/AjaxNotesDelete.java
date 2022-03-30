package co.micol.prj.notes.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.micol.prj.common.Command;
import co.micol.prj.notes.service.NotesService;
import co.micol.prj.notes.service.NotesVO;
import co.micol.prj.notes.serviceImpl.NotesServiceImpl;

public class AjaxNotesDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		NotesVO vo = new NotesVO(); 
		NotesService dao = new NotesServiceImpl();
		String str = request.getParameter("deleteSel");
		
		
		String[] strArr = str.split("-");
		
		int result = 0;
		
		for(int i=1; i < strArr.length; i++) {
			//System.out.println(strArr[i]);
			vo.setNo(strArr[i]);
			dao.notesDelete(vo);
			result++;
		}
		
		
        /*vo.setRecvId((String)session.getAttribute("memberId"));
		
		List<NotesVO> list = dao.notesSelectList(vo);
		String result = null;
		try {
			result = new ObjectMapper().writeValueAsString(list); //json 객체로 변환
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}*/
						
		return "ajax:" + result;
	}

}
