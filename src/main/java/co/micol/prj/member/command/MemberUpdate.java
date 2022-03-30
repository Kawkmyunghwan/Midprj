package co.micol.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;

public class MemberUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 업데이트
		MemberVO vo = new MemberVO();		
		HttpSession session = request.getSession();
		MemberService dao = new MemberServiceImpl();
		

		vo.setMemberId((String) session.getAttribute("memberId"));
		vo = dao.selectMemberTwo(vo);	
		
		if (request.getParameter("memberName").length() > 0) {
			vo.setMemberName(request.getParameter("memberName"));
		} 
		
		if (request.getParameter("memberPhone").length() > 0) {			
			vo.setMemberPhone(request.getParameter("memberPhone"));
		} 
		
		if (request.getParameter("memberPassword").length() > 0) {
			vo.setMemberPassword(request.getParameter("memberPassword"));
		} 
		
		

		dao.updateMember(vo);

		return "member/memberUpdate";
	}

}
