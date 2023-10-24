<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>(유저)고객 센터</title>
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>
/* 전체 페이지 스타일 */
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
}

/* 제목 스타일 */
h1 {
	text-align: center;
	margin-top: 60px;
	margin-bottom: 60px;
}

/* 검색 폼 스타일 */
form#search-form {
	text-align: center;
	margin-bottom: 20px;
}

form#search-form input[type="text"] {
	width: 218px;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-right: 10px;
}

.dropdown-group {
	text-align: center;
	margin-top: 20px;
}

/* 드롭다운 버튼 스타일 */
.dropdown {
	display: inline-block;
	margin-right: 10px;
}

/* 테이블 스타일 */
#table {
	width: 70%;
	margin: 0 auto;
	border-collapse: collapse;
	margin-bottom: 30px; /* 간격 추가 */
}

/* 테이블 헤더 스타일 */
#table th {
	background-color: #f2f2f2;
	border: 1px solid #dddddd;
	padding: 10px;
	text-align: center;
	font-weight: bold;
}

/* 테이블 셀 스타일 */
#table td {
	border: 1px solid #dddddd;
	padding: 10px;
	text-align: center;
}

/* 수정/삭제 버튼 스타일 */
.edit-delete-buttons {
	display: flex;
	justify-content: center;
}

.edit-delete-buttons form {
	display: inline-block;
	margin-right: 5px;
}

.edit-delete-buttons button {
	padding: 5px 10px;
	background-color: #ff0000;
	color: #ffffff;
	border: none;
	border-radius: 5px;
	f cursor: pointer;
}

/* 매장 홈으로 버튼 스타일 */

.back-home-button {
	text-align: center; /* 가로 중앙 정렬 */
	display: flex;
	justify-content: center; /* 가로 중앙 정렬 */
	margin-top: 20px; 
}

.card-info {
	text-decoration: none;
	font-size: 18px; /* 글씨 크기 조절 */
	color: #000; /* 글씨 색상 추가 */
} 
tr th {
    background-color: #800021 !important;
  }
  
th {
      color: #ffffff !important; /* 테이블 헤더 글자색 */
      text-align: center; /* 헤더 텍스트 중앙 정렬 */
   }  
</style>

</head>
<body>
	<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="col-lg-8 offset-lg-2 text-center">
			<div class="breadcrumb-text">
				<br>
				<h1>고객 센터</h1>
				<br>
				<p>Store Service</p>
			</div>
		</div>
	</div>
	<br>
	<br>

	<main>

		<table id="table" class="table table-striped table-hover">
			<tr>
				<th>문의번호</th>
				<th>카테고리</th>
				<th>문의제목</th>
				<th>문의날짜</th>
				<th>답변날짜</th>
			</tr>

			<c:forEach var="scs" items="${storecsList}">

				<tr>
					<td><a href="/CsStoreView?scs_idx=${scs.scs_idx}"
						class="card-info">${scs.scs_idx }</a></td>
					<td><a href="/CsStoreView?scs_idx=${scs.scs_idx}"
						class="card-info">${scs.scs_category}</a></td>
					<td><a href="/CsStoreView?scs_idx=${scs.scs_idx}"
						class="card-info">${scs.scs_title}</a></td>
					<td><a href="/CsStoreView?scs_idx=${scs.scs_idx}"
						class="card-info">${scs.sw_date}</a></td>
					<td><a href="/CsStoreView?scs_idx=${scs.scs_idx}"
						class="card-info">${scs.res_date}</a></td>
				</tr>
			</c:forEach>

		</table>
			<div class="back-home-button text-center">
			<a href="/StoreCsInquiryForm?s_no=${sloginVo.s_no }"
				class="btn btn-primary">글쓰기</a>
		</div>
		<div class="pagination">

			<c:if test="${pds.startPage != 1 }">
				<a
					href="/StoreCs?s_no=${s_no }&nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
			</c:if>
			<c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
				<c:choose>
					<c:when test="${p == pds.nowPage }">
						 <a>${p}</a>
					</c:when>
					<c:when test="${p != page.nowPage }">
						<a
							href="/StoreCs?s_no=${s_no }&nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:if test="${pds.endPage != pds.lastPage }">
				<a
					href="/StoreCs?s_no=${s_no }&nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
			</c:if>
		</div>
	


	</main>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href = "boardList?nowPage=${paging.nowPage}&cntPerPage=" + sel;
	}
</script>
</body>
</html>