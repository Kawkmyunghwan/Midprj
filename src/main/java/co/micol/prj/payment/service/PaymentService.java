package co.micol.prj.payment.service;

public interface PaymentService {
	PaymentVO paymentSelect(PaymentVO vo);
	int paymentCount(PaymentVO vo);
	int paymentInsert(PaymentVO vo);
	int paymentDelete(PaymentVO vo);
	int paymentUpdate(PaymentVO vo);
}
