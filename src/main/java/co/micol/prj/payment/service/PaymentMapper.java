package co.micol.prj.payment.service;

public interface PaymentMapper {
	PaymentVO paymentSelect(PaymentVO vo);
	int paymentInsert(PaymentVO vo);
	int paymentDelete(PaymentVO vo);
}
