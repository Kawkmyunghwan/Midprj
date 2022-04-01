package co.micol.prj.apply.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.apply.service.ApplyService;
import co.micol.prj.apply.service.ApplyVO;
import co.micol.prj.apply.serviceImpl.ApplyServiceImpl;
import co.micol.prj.common.Command;

public class ApplicationSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.getAttribute("memberNum");
		ApplyVO vo = new ApplyVO();
		vo.setMemberNum((int)session.getAttribute("memberNum"));
		ApplyService dao = new ApplyServiceImpl();
		dao.ApplySelect(vo);
		request.setAttribute("selectList", dao.ApplySelect(vo));
		
		return "myInfo/myApplyList.tiles";
	}

}
