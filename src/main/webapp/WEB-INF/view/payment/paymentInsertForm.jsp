<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="payment" action="paymentInsert.do" method="post">
<div align="center">
	<button type="button" onclick="iamport()">결제테스트</button>
	<input type="hidden" id="price" name="price" value="100">
	<input type="hidden" id="memberNum" name="memberNum" value=${memberNum }>
</div>
<script>
function iamport(){
	//가맹점 식별코드
	IMP.init('imp60368887');
	IMP.request_pay({
	    pg : 'kakaopay',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '한달 구독권' , //결제창에서 보여질 이름
	    amount : 100, //실제 결제되는 가격
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '구매자이름',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울 강남구 도곡동',
	    buyer_postcode : '123-456'
	}, function(rsp) {
	    if ( rsp.success ) {
	    	var msg = '결제가 완료되었습니다.';
	        msg += '결제 금액 : ' + rsp.paid_amount + '원';	        
	        payment.submit();
	    } else {
	    	 var msg = '결제에 실패하였습니다.';
	         msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
}
</script>
</form>
</body>
</html>