package co.micol.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;

public class MemberJoin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 회원가입
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("id"));
		vo.setMemberPassword(request.getParameter("password"));
		vo.setMemberName(request.getParameter("name"));
		int n = memberDao.insertMember(vo);
		if(n != 0) {
			request.setAttribute("message", "회원 가입에 성공했다.");
		}else {
			request.setAttribute("message", "회원 가입에 실패했다.");
		}
		return "member/memberJoin";
	}

}
