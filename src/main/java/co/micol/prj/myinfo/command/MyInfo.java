	package co.micol.prj.myinfo.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;
import co.micol.prj.payment.service.PaymentService;
import co.micol.prj.payment.service.PaymentVO;
import co.micol.prj.payment.serviceImpl.PaymentServiceImpl;

public class MyInfo implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberVO memVo = new MemberVO();
		MemberService memDao = new MemberServiceImpl();
		
		PaymentVO payVo = new PaymentVO();
		PaymentService payDao = new PaymentServiceImpl();
		
		HttpSession session = request.getSession();
		
		memVo.setMemberId((String)session.getAttribute("memberId"));
		memVo = memDao.selectMemberTwo(memVo);
		
		payVo.setMemberNum((int)session.getAttribute("memberNum"));
				
		//System.out.println(payVo.getPaymentDate()+""+payVo.getPrice());
		
		request.setAttribute("members", memDao.selectMemberTwo(memVo));				
		request.setAttribute("payment", payDao.paymentSelect(payVo));
		
		
		
		return "myInfo/myInfo";
	}

}
