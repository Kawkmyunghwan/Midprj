package co.micol.prj.home.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.jobOpening.service.JobOpeningService;
import co.micol.prj.jobOpening.serviceImpl.JobOpeningServiceImpl;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;

public class HomeCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		JobOpeningService dao = new JobOpeningServiceImpl();
		request.setAttribute("jobList", dao.selectJobOpeningList());
		System.out.println(dao.selectJobOpeningList());

		// System.out.println("카카오로그인 결과 " + request.getParameter("memberId"));
		request.setAttribute("memberId", request.getParameter("memberId"));
		// ---------------------------------------------- 카카오 id 값을 파라미터로 가져옴

		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();

		// ----------------------------------------------- 파라미터값을 DB에 저장

		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberName(request.getParameter("memberId"));

		// -------------------------------------------------- 셀렉트 회원정보 조회

		MemberVO info = memberDao.selectMember(vo);
		if (info == null) {
			session.setAttribute("memberId", vo.getMemberId());
			int n = memberDao.insertKakaoMember(vo);
		} 
		session.setAttribute("memberId", vo.getMemberId());
		
		return "home/home.tiles";

	}
}
