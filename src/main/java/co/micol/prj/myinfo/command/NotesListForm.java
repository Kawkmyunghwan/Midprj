package co.micol.prj.myinfo.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberVO;

public class NotesListForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 쪽지함 이동
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		
		vo.setMemberId("sem");
		//vo.setMemberId((String)session.getAttribute("memberId"));
		
		
		
		
		
		return "myInfo/noteList";
	}

}
