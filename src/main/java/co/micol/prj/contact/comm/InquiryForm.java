package co.micol.prj.contact.comm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.contact.service.ContactService;
import co.micol.prj.contact.serviceImpl.ContactServiceImpl;

public class InquiryForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ContactService contactDao = new ContactServiceImpl();
		request.setAttribute("contacts", contactDao.contactSelectList());
		return "contact/inquiryForm.tiles";
	}

}
