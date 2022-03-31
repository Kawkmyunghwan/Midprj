package co.micol.prj.payment.command;





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

public class PaymentInsert implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PaymentService paymentDao = new PaymentServiceImpl();
		MemberService memberDao = new MemberServiceImpl();
		PaymentVO vo = new PaymentVO();	
		MemberVO memberVo = new MemberVO();		
		HttpSession session = request.getSession();
		
		vo.setMemberNum((int)session.getAttribute("memberNum"));
		memberVo.setMemberId((String)session.getAttribute("memberId"));
		
		int check = (int)paymentDao.paymentCount(vo);
		int a = 1;
		int n = 0;
		//int plusDate = Integer.parseInt(request.getParameter("paymentDate"));
		//System.out.println(check);
		
        
		
		if(check < 1) {
		vo.setPrice(Integer.parseInt(request.getParameter("price")));
		
		memberDao.updateSub(memberVo);
		n = paymentDao.paymentInsert(vo);
		}else {
			vo = paymentDao.paymentSelect(vo);
			vo.setPrice(Integer.parseInt(request.getParameter("price"))+vo.getPrice());
			System.out.println(vo.getPaymentDate());
			vo.setPaymentDate(vo.getPaymentDate());
			vo.setDay(a);
			
			//System.out.println(vo.getMemberNum()+" "+vo.getDay()+" "+vo.getPrice()+" "+vo.getPaymentDate());
			
			
			n = paymentDao.paymentUpdate(vo);
		}
		
		if(n != 0 ) {
			return "myInfo.do";	
		}else {
			return "payment/paymentInsertForm";
		}		
	}

}
