package co.micol.prj.payment.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.payment.service.PaymentVO;
import co.micol.prj.payment.serviceImpl.PaymentServiceImpl;

public class PaymentInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		PaymentVO vo = new PaymentVO();
		
		vo.setMemberNum((int) session.getAttribute("memberNum"));
		return "payment/paymentInsertForm";
	}

}
