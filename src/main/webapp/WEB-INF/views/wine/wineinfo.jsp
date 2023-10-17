<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>와인 정보</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/all.min.css">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/meanmenu.min.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #fff;
	text-align: center;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.wine-container {
	display: flex;
	flex-wrap: wrap;
	max-width: 60%;
	margin: 20px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	height: auto;
}

.wine-image {
	max-width: 100%;
	max-height: 600x;
	object-fit: contain;
	border-radius: 10px 10px 0 0;
}

.wine-details {
	flex-basis: 50%; /* 오른쪽 위 */
	padding: 20px;
}

.wine-name {
	font-size: 36px;
	font-weight: bold;
	margin-bottom: 20px;
}

.wine-amount {
	font-size: 26px;
	margin-bottom: 80px;
}

.wine-price {
	font-size: 26px;
	font-weight: bold;
	margin-bottom: 30px;
}

.wine-description {
	font-size: 18px;
	margin-bottom: 70px;
}

.store-link {
	text-decoration: none;
	color: #007bff;
	font-weight: bold;
	font-size: 18px;
}
</style>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous">
</script>
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
	<%@include file="/WEB-INF/include/nav.jsp"%>
<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<h1>와인 정보</h1>
					</div>
				</div>
			</div>
		</div>
</div>	
	<c:forEach var="info" items="${wineInfo }">
		<div class="wine-container">
			<img class="wine-image" src="${info.w_image}" alt="와인 사진">
			<div class="wine-details">
				<div class="wine-name">${info.w_name }</div>
				<div class="wine-winery">${info.w_winery}</div>
				<div class="wine-location">${info.w_location }</div>
				<div class="wine-vintage">${info.w_vintage }</div>
			</div>
	</c:forEach>

	<c:forEach var="storeList" items="${storeList }">
		<ul>
			<!-- forEach  -->
			<li class="list-item"><a class="store-link"
				href="/StoreInfo?s_no=${storeList.s_no }">매장 이름 :
					${storeList.s_name }</a> <span>가격 : ${storeList.w_price }</span>
			    <c:choose>
					<c:when test="${not empty loginVo.u_no}">
						<a href="/CartList?u_no=${loginVo.u_no}" class="btn btn-primary">장바구니</a>
					</c:when>
				</c:choose>
		    </li>
		</ul>
	</c:forEach>
	</div>

</body>
</html>