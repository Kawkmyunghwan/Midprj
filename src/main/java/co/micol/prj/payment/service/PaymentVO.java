package co.micol.prj.payment.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class PaymentVO {
	private int memberNum;
	private int price;
	private int day;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date paymentDate;
	@Override
	public String toString() {
		return "PaymentVO [memberNum=" + memberNum + ", price=" + price + ", paymentDate=" + paymentDate + "]";
	}

}
