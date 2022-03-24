package co.micol.prj.jobOpening.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.jobOpening.service.JobOpeningService;
import co.micol.prj.jobOpening.service.JobOpeningVO;
import co.micol.prj.jobOpening.serviceImpl.JobOpeningServiceImpl;

public class JobDetail implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.getParameter("jobOpeningNum");
		JobOpeningService dao = new JobOpeningServiceImpl();
		JobOpeningVO vo = new JobOpeningVO();
		vo.setJobOpeningNum(Integer.parseInt(request.getParameter("jobOpeningNum")));
		request.setAttribute("jobOpening", dao.selectJobOpeningByNum(vo));
		return "jobOpening/jobDetail.tiles";
	}

}
