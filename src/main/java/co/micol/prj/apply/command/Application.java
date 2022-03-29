package co.micol.prj.apply.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.apply.service.ApplyService;
import co.micol.prj.apply.service.ApplyVO;
import co.micol.prj.apply.serviceImpl.ApplyServiceImpl;
import co.micol.prj.common.Command;

public class Application implements Command {

   @Override
   public String exec(HttpServletRequest request, HttpServletResponse response) {
      HttpSession session = request.getSession();
      ApplyVO vo = new ApplyVO();
      vo.setMemberNum((int)session.getAttribute("memberNum"));
      vo.setJobOpeningNum(Integer.parseInt(request.getParameter("jobOpeningNum")));
      vo.setMemberId(request.getParameter("memberId"));
      vo.setMemberEmail(request.getParameter("memberEmail"));
      vo.setTitle(request.getParameter("title"));
      vo.setContent(request.getParameter("content"));
      
      ApplyService dao = new ApplyServiceImpl();
      dao.ApplicationInsert(vo);
      

      return "jobDetail.do";
   }

}