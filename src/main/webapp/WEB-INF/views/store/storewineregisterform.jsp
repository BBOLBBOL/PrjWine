<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="col-lg-8 offset-lg-2 text-center">
			<div class="breadcrumb-text">
				<br>
				<h1>Welcome to Wine Story</h1>
				<br>
				<p class="subtitle">Hello!!</p>
			</div>
		</div>
	</div>
	<br>
	<br>
	<main>
      <!-- 버튼 검색 -->
		<div class="container">
			<form action="/StoreWineSearch" method="GET" id="search-form">
				<div>
					<select id="select" name="searchOption">
						<option value="w_name">이름</option>
						<option value="w_location">국가</option>
						<option value="w_vintage">빈티지</option>
					</select>
					<select id="select2" name="kindOption">
						<option value="0">전체</option>
						<option value="1">PORT</option>
						<option value="2">DESSERT</option>
						<option value="3">RED</option>
						<option value="4">ROSE</option>
						<option value="5">WHITE</option>
						<option value="6">SPARKLING</option>
					</select>
				<input type="text" name="searchKeyword" placeholder="검색어 입력">
				<button type="submit">검색</button>
				</div>
			</form>
		</div>
		<!-- 게시물 목록 -->
		<div style="overflow-y: auto; max-height: 340px; max-width: 60%; margin: 0 auto; text-align: center;">
			<table id="table">
				<tr>
					<th></th>
					<th>이름</th>
					<th>종류</th>
					<th>국가</th>
					<th>빈티지</th>
				</tr>
			<form action="/StoreWineRegister?s_no=${sloginVo.s_no}" method="POST" id="list-form">
				<c:forEach var="store" items="${searchList}" varStatus="loop">
						<tr>
							<td colspan="1" style="text-align: center;">
							<label> <input type="radio" name="selectedOption" value="${store.w_no}">
							</td>
							<td>${store.w_name}</td>
							<td>${store.w_kind}</td>
							<td>${store.w_location}</td>
							<td>${store.w_vintage}</td>
						</tr>
				</c:forEach>
			</table>
			<div style="position: sticky; bottom: 0; background-color: white; padding: 10px; text-align: center;">
					<input id="text1" type="text" name="w_amount" placeholder="수량 입력"> 
					<input id="text2" type="text" name="w_price" placeholder="가격 입력">
				<button id="btn1" type="submit" class="btn btn-primary" id="btn1">등록</button>
			</div>
			</form>

		</div>
	</main>
	<script>
	document.getElementById("btn1").addEventListener("click", function(event) {
	    var amountValue = document.getElementById("text1").value;
	    var priceValue = document.getElementById("text2").value;

	    if (amountValue === "" || priceValue === "") {
	        alert("값을 입력하세요."); // 값이 비어있을 때 알림 표시
	        event.preventDefault(); // 이벤트(등록)를 막음
	    } else {
	        var confirmation = confirm("등록 하시겠습니까?");
	        if (!confirmation) {
	            event.preventDefault(); // 이벤트(등록)를 막음
	        }
	    }
	});
	
	</script>
</body>
</html>