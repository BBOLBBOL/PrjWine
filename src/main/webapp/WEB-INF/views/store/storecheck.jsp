<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>매장 정보 확인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap"
	rel="stylesheet">
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
<style>
.logintitle {
	text-align: center;
	margin-top: 40px;
}

.container1 {
	margin: 0 auto;
	max-width: 50%;
	padding-top: 80px;
}

table {
	margin: 0 auto;
	border-collapse: collapse;
	width: 100%;
	background-color: #fff;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
	border-radius: .25rem;
}

tr>td:nth-child(1) {
	text-align: center;
	padding-right: 10px;
	width: 30%;
	font-weight: bold;
}

tr>td:nth-child(2) {
	text-align: left;
	padding-right: 10px;
	width: 30%;
	font-weight: bold;
}

tr, td {
	border-bottom: solid thin #e6e6e6;
	padding-bottom: 0.5em;
	padding-top: 0.5em;
	background-color: #D0E3F7;
}

.redFont {
	color: red;
	font-size: 12px;
	font-style: italic;
}

textarea {
	resize: none;
	width: 100%;
	height: 100%;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
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
	<div class="container1">
		<form action="StoreCheckUpdateForm?s_no=${s_no}" method="POST">
			<table>
				<colgroup>
					<col width="25%">
					<col width="*">
				</colgroup>
				<c:forEach var="check" items="${storeCheck}">
					<table>
						<tr>
							<td class="form-label">매장 아이디:</td>
							<td class="form-text">${check.s_id}</td>
						</tr>
						<tr>
							<td class="form-label">매장 이름:</td>
							<td class="form-text">${check.s_name}</td>
						</tr>
						<tr>
							<td class="form-label">사업자 번호:</td>
							<td class="form-text">${check.s_sn}</td>
						</tr>
						<tr>
							<td class="form-label">매장 주소:</td>
							<td class="form-text">${check.s_address}
								${check.s_detailAddress}</td>
						</tr>
						<tr>
							<td class="form-label">매장 연락처:</td>
							<td class="form-text">${check.s_phone}</td>
						</tr>
						<tr>
							<td class="form-label">매장 소개:</td>
							<td class="form-text">${check.s_cont}</td>
						</tr>
						<tr>
							<td class="form-label">매장 사진:</td>
							<td><img src="/imgpage/${check.s_simgname}" alt="매장사진" /></td>
						</tr>
					</table>
				</c:forEach>
				<div class="text-center">
					<div class="btn-group">
						<a type="button" class="btn1" onclick="location.href='/';">메인화면</a>
						<input type="submit" value="수정하기">
					</div>
				</div>
			</table>
		</form>
	</div>
</body>
</html>