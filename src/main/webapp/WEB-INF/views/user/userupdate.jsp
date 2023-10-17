<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>고객 정보 확인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/all.min.css">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/meanmenu.min.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/responsive.css">   
<style>
.logintitle {
	text-align: center;
	margin-top: 40px;
}

.container1 {
	margin: 0 auto;
	max-width: 500px;
	padding: 20px;
	background-color: #f5f5f5;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.container1 p {
	margin: 10px 0;
	font-weight: bold;
}

.btn {
	display: block;
	margin: 0 auto;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.countdown.js"></script>
<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
<script src="assets/js/waypoints.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/jquery.meanmenu.min.js"></script>
<script src="assets/js/sticker.js"></script>
<script src="assets/js/main.js"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp" %>
  <div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<h1>고객 정보 수정</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
<div class="container1">
    <form action="/UserUpdate?u_no=${loginVo.u_no }" method="POST">
    	<c:forEach var="user" items="${userList }">
            <div class="mb-3">
                <label for="userId" class="form-label">아이디:</label>
                <span id="userId" class="form-text">${user.u_id }</span>
            </div>
            <div class="mb-3">
                <label for="userName" class="form-label">이름:</label>
                <span id="userName" class="form-text">${user.u_name }</span>
            </div>
           <div>	
                     <label for="useraddress" class="form-label">주소:</label>
                     <input type="text" id="u_postcode" name="u_postcode" value="${user.u_postcode}">
                     <input type="button" onclick="u_execDaumPostcode()"
                        value="우편번호 찾기"><br> <input type="text"
                        id="u_address" name="u_address" value="${user.u_address}"><br> <input
                        type="text" id="u_detailAddress" name="u_detailAddress" value="${user.u_detailAddress}">
                     <input type="text" id="u_extraAddress" name="u_extraAddress" value="${user.u_extraAddress}">
                  </div>
            <div class="mb-3">
                <label for="userPhone" class="form-label">연락처:</label>
                <input type="text" name="u_phone" value="${user.u_phone }">
            </div>
        </c:forEach>
        <div class="text-center">
          <div class="btn-group">
             <button type="submit" class="btn btn-primary mx-2">수정하기</button>
          </div>
        </div>
    </form>
</div>
<script>
function u_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("u_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("u_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('u_postcode').value = data.zonecode;
            document.getElementById("u_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("u_detailAddress").focus();
        }
    }).open();
}



$("#user_pw1").blur(function () {
	let pwdCheck= /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
	
	if($("#user_pw1").val() == "") {
		$("#pwdcheck_1").text("비밀번호를 입력하세요.");
		user_pwd1  =  false;
	}
	else if (!pwdCheck.test($("#user_pw1").val())) {
		$("#pwdcheck_1").text("이건 틀린거 ");
		user_pwd1  =  false;
	} else {
		$("#pwdcheck_1").text("안전한 비밀번호 입니다")
		user_pwd1  =  true;
	}
});

$("#user_pw2").blur(function() {
	if($("user_pw2").val() == "") {
		$("#pwdcheck_2").css("color", "red");
		$("#pwdcheck_2").text("필수정보입니다");
		user_pw2 = false;
	}
	else if(user_pwd1 == true && $("#user_pw1").val() == $("#user_pw2").val()) {
		$("#pwdcheck_2").css("color", "blue");
		$("#pwdcheck_2").text("비밀번호 일치");
		user_pw2 = true;
	} else {
		$("#pwdcheck_2").text("비밀번호 다시 확인해주세요");
		$("#pwdcheck_2").css("color", "red");
		$("#user_pw2").val("");
		user_pw2 = false;
	}
});


</script>
</body>
</html>
