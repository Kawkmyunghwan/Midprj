package co.micol.prj.contact.comm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.contact.service.ContactService;
import co.micol.prj.contact.service.ContactVO;
import co.micol.prj.contact.serviceImpl.ContactServiceImpl;

public class ReviewInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		ContactService Dao = new ContactServiceImpl();
		ContactVO vo = new ContactVO();
		vo.setInfoNum(Integer.parseInt(request.getParameter("infoNum")));
		vo.setIsAnswer(request.getParameter("isAnswer"));
		Dao.rewiewInsert(vo);
		return "inquiryView.do";
	}
}