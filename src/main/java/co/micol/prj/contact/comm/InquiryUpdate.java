package co.micol.prj.contact.comm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.contact.service.ContactService;
import co.micol.prj.contact.service.ContactVO;
import co.micol.prj.contact.serviceImpl.ContactServiceImpl;

public class InquiryUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ContactService contactDao = new ContactServiceImpl();
		ContactVO vo = new ContactVO();
		vo.setInfoNum(Integer.parseInt(request.getParameter("infoNum")));
		vo.setInfoAnswerContent(request.getParameter("infoAnswerContent"));
		System.out.println(request.getParameter("infoAnswerContent"));
		contactDao.contactUpdate(vo);
		response.setContentType("text/html; charset=UTF-8");
		request.setAttribute("contactVO", vo);
		return "contact/updateSucess.tiles";
	}

}
