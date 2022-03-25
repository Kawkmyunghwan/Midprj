package co.micol.prj.contact.comm;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.contact.service.ContactService;
import co.micol.prj.contact.service.ContactVO;
import co.micol.prj.contact.serviceImpl.ContactServiceImpl;

public class InquiryInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ContactService contactDao = new ContactServiceImpl();
		ContactVO vo = new ContactVO();
		vo.setInfoWriter(request.getParameter("infoWriter"));
		vo.setInfoDate(Date.valueOf(request.getParameter("infoDate")));
		vo.setInfoTitle(request.getParameter("infoTitle"));
		vo.setInfoAnswerContent(request.getParameter("infoAnswerContent"));
		int n = contactDao.contactInsert(vo);
		if(n != 0) {
			return "inquiryForm.do";
		}else {
			request.setAttribute("message", "게시글 등록에 실패했습니다.");
			return "contact/contactError";
		}
	}
}
