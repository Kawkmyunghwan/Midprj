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
		MemberVO vvo = new MemberVO();
		HttpSession session = request.getSession();
		MemberService dao = new MemberServiceImpl();
		

		vo.setMemberId((String) session.getAttribute("memberId"));
		vvo = dao.selectMember(vo);
		System.out.print(vvo);
		if (request.getParameter("memberName") != null) {
			vo.setMemberName(request.getParameter("memberName"));
		} else {
			session.setAttribute("memberName", vvo.getMemberName());
			vo.setMemberName((String) session.getAttribute("memberName"));
		}
		
		if (request.getParameter("memberPhone") != null) {			
			vo.setMemberPhone(request.getParameter("memberPhone"));
		} else {
			session.setAttribute("memberPhone", vvo.getMemberPhone());
			vo.setMemberPhone((String) session.getAttribute("memberPhone"));
		}
		
		if (request.getParameter("memberPassword") != null) {
			vo.setMemberPassword(request.getParameter("memberPassword"));
		} else {
			session.setAttribute(("memberPassword"), vvo.getMemberPassword());
			vo.setMemberPassword((String) session.getAttribute("memberPassword"));
		}
		
		System.out.println("" + vo.getMemberId() + vo.getMemberName() + vo.getMemberPassword() + vo.getMemberPhone());

		dao.updateMember(vo);

		return "member/memberUpdate";
	}

}
