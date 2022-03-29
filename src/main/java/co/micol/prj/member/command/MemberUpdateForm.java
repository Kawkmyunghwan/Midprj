package co.micol.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;

public class MemberUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberVO vo = new MemberVO();		
		HttpSession session = request.getSession();
		MemberService dao = new MemberServiceImpl();
		
		vo.setMemberId((String) session.getAttribute("memberId"));
		vo = dao.selectMemberTwo(vo);
		
		
		String str = vo.getFavorite();
		
		request.setAttribute("fav", str);
		
		return "member/memberUpdate";
	}

}
