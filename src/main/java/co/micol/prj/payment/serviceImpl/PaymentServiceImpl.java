package co.micol.prj.payment.serviceImpl;

import org.apache.ibatis.session.SqlSession;

import co.micol.prj.common.DataSource;
import co.micol.prj.payment.service.PaymentMapper;
import co.micol.prj.payment.service.PaymentService;
import co.micol.prj.payment.service.PaymentVO;

public class PaymentServiceImpl implements PaymentService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private PaymentMapper map = sqlSession.getMapper(PaymentMapper.class);
	
	@Override
	public PaymentVO paymentSelect(PaymentVO vo) {
		
		return map.paymentSelect(vo);
	}

	@Override
	public int paymentInsert(PaymentVO vo) {

		return map.paymentInsert(vo);
	}

	@Override
	public int paymentDelete(PaymentVO vo) {

		return map.paymentDelete(vo);
	}

}
