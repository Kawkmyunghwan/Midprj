package co.micol.prj.companyInfo.comm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.companyInfo.service.CompanyService;
import co.micol.prj.companyInfo.serviceImpl.CompanyServiceImpl;

public class CompanyInfoForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CompanyService CompanyDao = new CompanyServiceImpl();
		request.setAttribute("company", CompanyDao.CompanySelectList());
		return "companyInfo/companyInfoForm.tiles";
	}

}
