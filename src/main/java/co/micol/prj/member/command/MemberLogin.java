package co.micol.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;



public class MemberLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그인 처리 과정
		HttpSession session = request.getSession();
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
			
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPassword(request.getParameter("memberPassword"));
		vo = memberDao.selectMember(vo);
		request.setAttribute("member", vo);
		String viewPage;
		
		if(vo != null) {
			if(vo.getSecession() != 1) {
			//여기서 세션 처리하고
			session.setAttribute("memberId", vo.getMemberId());
			session.setAttribute("memberNum", vo.getMemberNum());
			session.setAttribute("memberEmail", vo.getMemberEmail());
			session.setAttribute("favorite", vo.getFavorite());
			session.setAttribute("memberName", vo.getMemberName());
			session.setAttribute("subscription", vo.getSubscription());
			viewPage = "member/memberLoginSuccess.tiles";			
			}else {				
				viewPage = "member/memberLoginFail.tiles";
			}
		}else {			
			viewPage = "member/memberLoginFail.tiles";
		}
		
		return viewPage;
	
	}
}
 