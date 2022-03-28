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
      
      
      
      
      if(vo.getMemberId() != null) {
         //여기서 세션 처리하고
         session.setAttribute("memberId", vo.getMemberId());
         session.setAttribute("memberNum", vo.getMemberNum());                  
         return "home.do";
      }else {
         request.setAttribute("message", "아이디 또는 패스워드가 일치하지 않습니다.");
         return "home.do";
      }
      
   }

}