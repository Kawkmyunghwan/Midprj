package co.micol.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;



public class MemberDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 회원 탈퇴
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		MemberService mDao = new MemberServiceImpl();
		
		vo.setMemberId("sem");
		//vo.setMemberId((String)session.getAttribute("memberId"));
		
		mDao.deleteMember(vo);
		
		return "home.do"; //나중에 로그아웃.do로 교체
	}

}
