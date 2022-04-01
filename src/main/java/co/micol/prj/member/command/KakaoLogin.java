package co.micol.prj.member.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;

public class KakaoLogin implements Command {

   @Override
   public String exec(HttpServletRequest request, HttpServletResponse response) {
      // --------------------------------------------------------------------------------------------------------------
      HttpSession session = request.getSession();
      MemberService memberDao = new MemberServiceImpl();
      MemberVO vo = new MemberVO();
      // ---------------------------------------------- 카카오 id 값을 파라미터로 가져옴


      vo.setMemberId(request.getParameter("memberId"));
      vo.setMemberName(request.getParameter("memberId"));

      // -------------------------------------------------- 셀렉트 회원정보 조회

      MemberVO info = memberDao.selectMember(vo);
      if (info == null) {   
         // ----------------------------------------------- 파라미터값을 DB에 저장
         int n = memberDao.insertKakaoMember(vo);
         if(n > 0) {
        	 info = memberDao.selectMember(vo);
         }
         	
      }
      session.setAttribute("memberNum", info.getMemberNum());
      session.setAttribute("memberId", info.getMemberId());
      session.setAttribute("memberName", info.getMemberName());
      
      try {
         response.sendRedirect("home.do");
      } catch (IOException e) {
         e.printStackTrace();
      }
      return null;
   }

}