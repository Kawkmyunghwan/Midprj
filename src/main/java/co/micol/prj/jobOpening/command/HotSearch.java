package co.micol.prj.jobOpening.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.jobOpening.service.JobOpeningService;
import co.micol.prj.jobOpening.serviceImpl.JobOpeningServiceImpl;

public class HotSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		JobOpeningService dao = new JobOpeningServiceImpl();
		request.setAttribute("hit", dao.selectJobOpeningListByHit());		
		System.out.println(dao.selectJobOpeningListByHit());	
		return "jobOpening/hotSearch.tiles";
	}

}
