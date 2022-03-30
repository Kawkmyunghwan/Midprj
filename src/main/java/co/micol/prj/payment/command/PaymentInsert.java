package co.micol.prj.payment.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.payment.service.PaymentService;
import co.micol.prj.payment.service.PaymentVO;
import co.micol.prj.payment.serviceImpl.PaymentServiceImpl;

public class PaymentInsert implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PaymentService paymentDao = new PaymentServiceImpl();
		PaymentVO vo = new PaymentVO();
		
		vo.setMemberNum((int) request.getSession().getAttribute("memberNum"));
		vo.setPrice(Integer.parseInt(request.getParameter("price")));

		int n = paymentDao.paymentInsert(vo);
		
		if(n != 0 ) {
			return "myInfo.do";			
		}else {
			return "payment/paymentInsertForm";
		}
	}

}
