package co.micol.prj.jobOpening.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.jobOpening.service.JobOpeningService;
import co.micol.prj.jobOpening.serviceImpl.JobOpeningServiceImpl;

public class Jsearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		JobOpeningService Dao = new JobOpeningServiceImpl();
		String cond = request.getParameter("Jsearch");
		System.out.println(cond);
		System.out.println(Dao.selectJobOpeningListByPost(cond));
		request.setAttribute("jobList", Dao.selectJobOpeningListByPost(cond));
		
		return "home/home.tiles";
	}

}
