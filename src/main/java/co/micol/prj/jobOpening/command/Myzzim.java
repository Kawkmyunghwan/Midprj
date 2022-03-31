package co.micol.prj.jobOpening.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.jobOpening.service.JobOpeningService;
import co.micol.prj.jobOpening.serviceImpl.JobOpeningServiceImpl;

public class Myzzim implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		JobOpeningService dao = new JobOpeningServiceImpl();
		int co = (int)session.getAttribute("memberNum");
		request.setAttribute("zzim", dao.selectJobOpeningListByMyzzim(co));
		
		return "jobOpening/Myzzim";
	}

}
