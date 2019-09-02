<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>
<!-- 결제 -->
    <script>
    	IMP.init('imp80836035');
    
    	IMP.request_pay({
    	    pg : 'html5_inicis',	/* 결제PG사 */
    	    pay_method : 'card',/* 결제방법 */
    	    merchant_uid : 'merchant_' + new Date().getTime(),	/* 주문번호 */
    	    name : '주문명:결제테스트',	/* 주문이름 */
    	    amount : 100,		/* 결제 가격 */
    	    buyer_email : 'iamport@siot.do',	/* 구매자 이멜 */
    	    buyer_name : '구매자이름',				/* 구매자 이름 */
    	    buyer_tel : '010-1234-5678',		/* 구매자 전화번호(필수)*/
    	}, function(rsp) {
    		
    		$.ajax({
    			url:"confirm.py",
    			type:"post",
    			data:{payNum:rsp.imp_uid,
    				  reservNum:rsp.merchant_uid,
    				  payPrice:rsp.paid_amount,
    				  confirmNum:rsp.apply_num}
    			
    			
    		});
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    	    /* if ( rsp.success ) {
    	        var msg = '결제가 완료되었습니다.';
    	        msg += '고유ID : ' + rsp.imp_uid;
    	        msg += '상점 거래ID : ' + rsp.merchant_uid;
    	        msg += '결제 금액 : ' + rsp.paid_amount;
    	        msg += '카드 승인번호 : ' + rsp.apply_num;
    	    } else {
    	        var msg = '결제에 실패하였습니다.';
    	        msg += '에러내용 : ' + rsp.error_msg;
    	    }

    	    alert(msg); */
    	});
    
    
    	
    	
    	
    
    </script>
    <!--     -->

</body>
</html>