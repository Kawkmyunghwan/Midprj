package co.micol.prj.apply.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.apply.service.ApplyService;
import co.micol.prj.apply.service.ApplyVO;
import co.micol.prj.apply.serviceImpl.ApplyServiceImpl;
import co.micol.prj.common.Command;
import co.micol.prj.jobOpening.service.JobOpeningService;
import co.micol.prj.jobOpening.service.JobOpeningVO;
import co.micol.prj.jobOpening.serviceImpl.JobOpeningServiceImpl;

public class NotilesApply implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String joParam = request.getParameter("jobOpeningNum");
//		-------------------------------------------------------		
		JobOpeningVO vo = new JobOpeningVO();
		JobOpeningService dao = new JobOpeningServiceImpl();
		vo.setJobOpeningNum(Integer.parseInt(joParam));
		vo = dao.selectJobOpeningByNum(vo);
		request.setAttribute("jobOpening", vo);
//		---------------------입사신청서에 뜰 기업정보 조회--------------
		
		
		return "jobOpening/apply.tiles";
	}

}
