package co.micol.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;

public class MemberLogout implements Command {

   @Override
   public String exec(HttpServletRequest request, HttpServletResponse response) {
      HttpSession session = request.getSession();
       session.invalidate(); 
       /*session.removeAttribute("memberId");
      session.removeAttribute("memberNum");*/
      return "home.do";
   }

}