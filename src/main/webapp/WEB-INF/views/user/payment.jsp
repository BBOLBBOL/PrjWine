<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>결제 확인</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script type="text/javascript"	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <style>
        /* 컨테이너 스타일링 */
        .container {
            margin-top: 40px;
        }

        /* 제목 스타일링 */
        .logintitle {
            text-align: center;
        }

        /* 사용자 정보 스타일링 */
        .user-info {
            background-color: #f5f5f5;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
        }

        /* 주문 정보 스타일링 */
        .order-info {
            margin-top: 20px;
            background-color: #f5f5f5;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
        }

        /* 버튼 스타일링 */
        .btn-primary {
            display: block;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp" %>
<br>
<h2 class="logintitle">결제 확인</h2>
<br>
<div class="container">
        <div class="user-info">
            <h2>주문자</h2>
            <c:forEach var="user" items="${userList}">
                <p><strong>이름:</strong><span id="u_name">${user.u_name }</span></p>
                <p><strong>주소:</strong><span id="u_address">${user.u_address }</span></p>
                <p><strong>휴대폰:</strong> ${user.u_phone }</p>
            </c:forEach>
        </div>
        
        <div class="order-info">
            <h2>주문 정보</h2>
            <c:forEach var="sel" items="${selCartList}">
                <p><strong>와인명:</strong><span id="w_name">${sel.w_name }</span></p>
                <p><strong>판매점:</strong><span id="s_name">${sel.s_name }</span></p>
                <p><strong>가격:</strong><span id="w_price">${sel.w_price }</span></p>
                <p><strong>수량:</strong><span id="c_count">${sel.c_count }</span></p>
                <p><strong>총가격:</strong><span id="c_allprice">${sel.c_allprice }</span></p>
            </c:forEach>
        </div>

        <div class="text-center">
            <div class="btn-group">
                <button class="btn btn-primary" id="money-btn">결제</button>
            </div>
        </div>
</div>
<script>

var IMP  =  window.IMP;
IMP.init("imp37666357")

var storeName  = `${s_name}`;
var wineName  =  `${w_name}`;
var allPrice  =  `${c_allprice}`;
    allPrice  =  parseInt(allPrice);

var buyerName =  $("#u_name").val();
var buyerAddress  =  $("#u_address").val();

$('#money-btn').click(function() {
	IMP.request_pay({
		pg: 'kakaopay',
		pay_method: 'card',
		merchant_uid: 'merchant_' + new Date().getTime(),

		name: '지점명 : ' + storeName + '점',
		amount: `${c_allprice}`,
		buyer_email: "",  /*필수 항목이라 "" 로 남겨둠*/
		buyer_name: buyerName,
		customer_uid : 'store-a2524cc9-b0ee-4153-9b4e-659a6ec9109b'
	}, function(rsp) {
		console.log(rsp);
		
		 //결제 성공 시
		if (rsp.success) {
			var msg = '결제가 완료되었습니다.';
			console.log("결제성공 ");

			$.ajax({
				type: "GET",
				url: '/WinePay',
				data: {
					amount: `${c_allprice}`,
					imp_uid: rsp.imp_uid,
					merchant_uid: rsp.merchant_uid
				}
			});
		} else {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + rsp.error_msg;
		}
		alert(msg);
	});
});

</script>
</body>
</html>
