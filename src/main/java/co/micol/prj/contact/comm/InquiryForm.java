package co.micol.prj.contact.comm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.contact.service.ContactService;
import co.micol.prj.contact.service.ContactVO;
import co.micol.prj.contact.serviceImpl.ContactServiceImpl;

public class InquiryForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ContactService contactDao = new ContactServiceImpl();
		ContactVO vo = new ContactVO();
		
		int page = 1; // 시작 페이지
		int itemsInAPage = 6;
		int totalCount = contactDao.pagingTotalCount(vo);
		int totalPage = (int) Math.ceil(totalCount / (double) itemsInAPage);
		
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("page", page);
		request.setAttribute("contacts", contactDao.contactSelectList());
		
		return "contact/inquiryForm.tiles";
	}

}
