package co.micol.prj.companyInfo.comm;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.companyInfo.service.CompanyService;
import co.micol.prj.companyInfo.service.CompanyVO;
import co.micol.prj.companyInfo.serviceImpl.CompanyServiceImpl;

public class CompanyInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CompanyService CompanyDao = new CompanyServiceImpl();
		CompanyVO vo = new CompanyVO();
		
		vo.setCOMPANYNAME(request.getParameter("COMPANYNAME"));
		vo.setCOMPANYIMAGE(request.getParameter("COMPANYIMAGE"));
		vo.setJOBGROUP(request.getParameter("JOBGROUP"));
		vo.setCOMPANYADDRESS(request.getParameter("COMPANYADDRESS"));
		vo.setSALARY(Integer.parseInt(request.getParameter("SALARY")));
		vo.setCOMPANYCONTENT(request.getParameter("COMPANYCONTENT"));
		vo.setREPRESENTATIVE(request.getParameter("REPRESENTATIVE"));
		vo.setEMPLOYEENUM(Integer.parseInt(request.getParameter("EMPLOYEENUM")));
		vo.setCOMPANYBUILDDATE(Date.valueOf(request.getParameter("COMPANYBUILDDATE")));
		vo.setHOMEPAGE(request.getParameter("HOMEPAGE"));
		
		String subAdd = request.getParameter("COMPANYADDRESS");
		String location = subAdd.substring(0,2);
		vo.setLOCATION(location);
		//실제 주소에서 앞 두글자만 잘라서 그 값을 데이터베이스 LOCATION에 넣어줌.
		String addr1 = request.getParameter("COMPANYADDRESS");
		String addr2 = request.getParameter("ADDRESSDETAIL");
		String addr = addr1 + " " + addr2;
		vo.setCOMPANYADDRESS(addr);
		
		
		CompanyDao.CompanyInsert(vo);	
		return "companyInfoForm.do";

	}

}
