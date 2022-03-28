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
				MemberService mDao = new MemberServiceImpl();
				
				vo.setMemberId("sem");
				//vo.setMemberId((String)session.getAttribute("memberId"));
				vo.setMemberName(request.getParameter("memberName"));
				vo.setMemberPhone(request.getParameter("memberPhone"));
				vo.setMemberPassword(request.getParameter("memberPassword"));
				
				//System.out.println(vo.getMemberId() +""+ vo.getMemberName() + vo.getMemberPhone() + vo.getMemberPassword());
				
				mDao.updateMember(vo);
				
				
		return "member/memberUpdate";
	}

}
