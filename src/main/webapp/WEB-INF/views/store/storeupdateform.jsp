<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>매장 정보 확인</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="assets/css/responsive.css">
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <style>
        .container {
            margin: 20px auto;
        }
        .storetitle {
            text-align: center;
            margin-top: 40px;
        }
        .form-label {
            font-weight: bold;
        }
        .form-text {
            font-weight: normal;
        }
        .mb-3 {
            margin-bottom: 15px;
        }
        .btn-group {
            text-align: center;
        }
        .btn-group button {
            margin: 10px;
        }
        img {
            max-width: 100%;
            height: auto;
        }
         .btn1 {
    font-family: 'Poppins', sans-serif;
    display: inline-block;
    background-color: #F28123;
    color: #fff;
    padding: 13px 25px;
    border-radius: 50px;
    transition: 0.3s;
    box-sizing: border-box;
    border: none; /* 경계선 없음 */
    cursor: pointer; /* 포인터 커서로 변경 */
    font-weight: 700;
    font-size: 15px;
    border: none;
}

/* 호버(마우스 오버) 시의 버튼 스타일 */
.btn1:hover {
    background-color: #000; 
    color: #F28123;!important;
} 
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
       <!-- jquery -->
   <script src="assets/js/jquery-1.11.3.min.js"></script>
   <!-- bootstrap -->
   <script src="assets/bootstrap/js/bootstrap.min.js"></script>
   <!-- count down -->
   <script src="assets/js/jquery.countdown.js"></script>
   <!-- isotope -->
   <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
   <!-- waypoints -->
   <script src="assets/js/waypoints.js"></script>
   <!-- owl carousel -->
   <script src="assets/js/owl.carousel.min.js"></script>
   <!-- magnific popup -->
   <script src="assets/js/jquery.magnific-popup.min.js"></script>
   <!-- mean menu -->
   <script src="assets/js/jquery.meanmenu.min.js"></script>
   <!-- sticker js -->
   <script src="assets/js/sticker.js"></script>
   <!-- main js -->
   <script src="assets/js/main.js"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>전체매장</h1>
                  <br>
                  <p>Store Information</p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <br>
   <br>
    <div class="container">
        <form action="StoreCheckUpdate?s_no=${s_no }" method="POST" enctype="multipart/form-data">
            <c:forEach var="check" items="${storeCheck }">
                <div class="mb-3">
                    <label for="storeId" class="form-label">매장 아이디:</label>
                    <span id="storeId" class="form-text">${check.s_id }</span>
                </div>
                <div class="mb-3">
                    <label for="storeName" class="form-label">매장 이름:</label>
                    <input type="text" name="s_name" value="${check.s_name }">
                </div>
                <div class="mb-3">
                    <label for="storeName" class="form-label">사업자 번호:</label>
                    <span id="s_sn" class="form-text">${check.s_sn }</span>
                </div>
                <div>
                    <input type="text" id="s_postcode" name="s_postcode" value="${check.s_postcode}">
                    <input type="button" onclick="s_execDaumPostcode()" value="우편번호 찾기"><br> 
                    <input type="text" id="s_address" name="s_address" value="${check.s_address }"><br>
                    <input type="text" id="s_detailAddress" name="s_detailAddress" value="${check.s_detailAddress }">
                    <input type="text" id="s_extraAddress" name="s_extraAddress" value="${check.s_extraAddress }">
                </div>
                <div class="mb-3">
                    <label for="storePhone" class="form-label">매장 연락처:</label>
                    <input type="text" name="s_phone" value="${check.s_phone }">
                </div>
                <div class="mb-3">
                    <label for="storeCont" class="form-label">매장 소개:</label>
                    <textarea name="s_cont">${check.s_cont }</textarea>
                </div>
                <div class="mb-3">
                    <label for="storeIMG" class="form-label">현재 매장사진:</label>
                   <img src="/pageimg/${check.s_simgname}" alt="매장사진" style="max-width: 300px;" />
                   </div>
                   <div>
					<label for="storeIMG" class="form-label">변경할 매장사진:</label>
                  <img id="preview" style="max-width: 300px;">
                  <br>
                  <input type="file" accept="image/*" onchange="readURL(this)" name="upfile" class="upfile" />
                </div>
        
                
            </c:forEach>
            <div class="text-center">
                <div class="btn-group">
                    <a type="button" class="btn1" onclick="location.href='/';">메인 화면</a>
                    <input type="submit" value="수정하기">
                </div>
            </div>
        </form>
    </div>
<script>
function s_execDaumPostcode() {
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
                document.getElementById("s_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("s_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('s_postcode').value = data.zonecode;
            document.getElementById("s_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("s_detailAddress").focus();
        }
    }).open();
}



	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				document.getElementById('preview').src = e.target.result;
			};
			reader.readAsDataURL(input.files[0]);
		} else {
			document.getElementById('preview').src = "";
		}
	}

</script>
</body>
</html>









