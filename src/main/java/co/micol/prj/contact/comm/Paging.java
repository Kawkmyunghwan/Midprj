package co.micol.prj.contact.comm;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.contact.service.ContactService;
import co.micol.prj.contact.service.ContactVO;
import co.micol.prj.contact.service.Pagination;
import co.micol.prj.contact.serviceImpl.ContactServiceImpl;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;

public class Paging implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		MemberVO membervo = new MemberVO();

		ContactService contactDao = new ContactServiceImpl();
		ContactVO vo = new ContactVO();
		
		int page = 1; // 시작 페이지
		int itemsInAPage = 6;
		int totalCount = contactDao.pagingTotalCount(vo);
		int totalPage = (int) Math.ceil(totalCount / (double) itemsInAPage);
		
		Pagination pagination = new Pagination(totalCount, 2);
		pagination.setListCnt(totalCount);
		List<ContactVO> list = contactDao.contactSelectList();
		
		request.setAttribute("list", list);
		request.setAttribute("listCnt", totalCount);
		request.setAttribute("loginVO", membervo);
		request.setAttribute("pagination", pagination);

		request.setAttribute("totalCount", totalCount);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("page", page);
		
		
		return "contact/inquiryForm.tiles" ;
	}

}
