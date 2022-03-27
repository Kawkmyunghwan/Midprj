package co.micol.prj.jobOpening.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.jobOpening.service.JobOpeningService;
import co.micol.prj.jobOpening.service.JobOpeningVO;
import co.micol.prj.jobOpening.serviceImpl.JobOpeningServiceImpl;
import co.micol.prj.zzim.service.ZzimService;
import co.micol.prj.zzim.service.ZzimVO;
import co.micol.prj.zzim.serviceImpl.ZzimServiceImpl;

public class JobDetail implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {	
		HttpSession session = request.getSession();
		request.getParameter("jobOpeningNum");
		JobOpeningService dao = new JobOpeningServiceImpl();
		JobOpeningVO vo = new JobOpeningVO();
		vo.setJobOpeningNum(Integer.parseInt(request.getParameter("jobOpeningNum")));
		
		ZzimVO zVo = new ZzimVO();
		ZzimService zDao = new ZzimServiceImpl();	
		

		zVo.setMemberNum((int)session.getAttribute("memberNum"));				
		request.setAttribute("jobOpening", dao.selectJobOpeningByNum(vo));
		request.setAttribute("zzim", zDao.selectZzim(zVo));
		
		return "jobOpening/jobDetail.tiles";
	}

}
