package co.micol.prj.companyInfo.comm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import co.micol.prj.common.Command;


public class CompanyUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "companyInfo/companyUpdate";
	}

}
