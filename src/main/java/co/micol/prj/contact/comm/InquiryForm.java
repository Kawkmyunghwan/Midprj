package co.micol.prj.contact.comm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.contact.service.ContactService;
import co.micol.prj.contact.service.ContactVO;
import co.micol.prj.contact.service.PageMaker;
import co.micol.prj.contact.service.SearchCriteria;
import co.micol.prj.contact.serviceImpl.ContactServiceImpl;

public class InquiryForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ContactService contactDao = new ContactServiceImpl();
		ContactVO vo = new ContactVO();
		PageMaker pageMaker = new PageMaker();
		SearchCriteria cri = new SearchCriteria();
		
		if(request.getParameter("page")!=null) {
			cri.setPage(Integer.parseInt(request.getParameter("page")));
		}
		
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(contactDao.pagingTotalCount(vo));
		
		request.setAttribute("pageMaker", pageMaker);
		request.setAttribute("contacts", contactDao.contactSelectList(cri));
		
		return "contact/inquiryForm.tiles";
	}

}
