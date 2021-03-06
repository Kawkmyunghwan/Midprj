package co.micol.prj.jobOpening.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.apply.service.ApplyService;
import co.micol.prj.apply.service.ApplyVO;
import co.micol.prj.apply.serviceImpl.ApplyServiceImpl;
import co.micol.prj.common.Command;
import co.micol.prj.companyInfo.service.CompanyService;
import co.micol.prj.companyInfo.service.CompanyVO;
import co.micol.prj.companyInfo.serviceImpl.CompanyServiceImpl;
import co.micol.prj.jOComment.service.JOCommentService;
import co.micol.prj.jOComment.serviceImpl.JOCommentServiceImpl;
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
		ZzimService zDao = new ZzimServiceImpl();	
		ApplyService applyDao = new ApplyServiceImpl();
		JOCommentService jDao = new JOCommentServiceImpl();
		CompanyService companyDao = new CompanyServiceImpl();
		
		JobOpeningVO vo = new JobOpeningVO();
		CompanyVO cVo = new CompanyVO();
		ZzimVO zVo = new ZzimVO();
		ApplyVO aVo = new ApplyVO();
		
		vo.setJobOpeningNum(Integer.parseInt(request.getParameter("jobOpeningNum")));
		cVo.setJOBOPENINGNUM(Integer.parseInt(request.getParameter("jobOpeningNum")));
		if(session.getAttribute("memberNum") != null) {
			zVo.setMemberNum((int)session.getAttribute("memberNum"));			
			aVo.setMemberNum((int)session.getAttribute("memberNum"));		
		}
		request.setAttribute("apply", applyDao.ApplySelect(aVo));
		request.setAttribute("jobOpening", dao.selectJobOpeningByNum(vo));
		request.setAttribute("company", companyDao.CompanySelect(cVo));
		request.setAttribute("zzim", zDao.selectZzim(zVo));
		request.setAttribute("comment", jDao.selectJOCommentList());
		
		int hit = (Integer.parseInt(request.getParameter("jobOpeningNum")));
		dao.jobOpeningUpdateHit(hit);
//		????????? ??????.
		
		
		return "jobOpening/jobDetail.tiles";
	}

}
