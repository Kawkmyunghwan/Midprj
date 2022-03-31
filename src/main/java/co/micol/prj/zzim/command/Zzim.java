package co.micol.prj.zzim.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.zzim.service.ZzimService;
import co.micol.prj.zzim.service.ZzimVO;
import co.micol.prj.zzim.serviceImpl.ZzimServiceImpl;

public class Zzim implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		ZzimVO vo = new ZzimVO();
		ZzimService dao = new ZzimServiceImpl();		
				
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberNum((int)session.getAttribute("memberNum"));
		vo.setJobOpeningNum(Integer.parseInt(request.getParameter("jobOpeningNum")));
		dao.insertZzim(vo);				

		return "jobDetail.do";
	}

}
