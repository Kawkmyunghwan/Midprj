package co.micol.prj.companyInfo.comm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.companyInfo.service.CompanyService;
import co.micol.prj.companyInfo.service.CompanyVO;
import co.micol.prj.companyInfo.serviceImpl.CompanyServiceImpl;


public class CompanyUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CompanyVO vo = new CompanyVO();
		CompanyService Dao = new CompanyServiceImpl();
		vo.setJOBOPENINGNUM(Integer.parseInt(request.getParameter("JOBOPENINGNUM")));
		CompanyVO selectOne = Dao.CompanySelect(vo);
		request.setAttribute("JOBOPENINGNUM", request.getParameter("JOBOPENINGNUM"));
		request.setAttribute("company", selectOne);
		
		return "companyInfo/companyUpdate.tiles";
	}

}
