package co.micol.prj.contact.comm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.contact.service.ContactService;
import co.micol.prj.contact.service.ContactVO;
import co.micol.prj.contact.serviceImpl.ContactServiceImpl;

public class InquiryView implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ContactService contactDao = new ContactServiceImpl();
		ContactVO vo = new ContactVO();
		vo.setInfoNum(Integer.parseInt(request.getParameter("infoNum")));
		request.setAttribute("contact", contactDao.contactSelect(vo));
		contactDao.contactUpdateHit(vo.getInfoNum()); //조회수증가
		return "contact/contactView";
	}

}
