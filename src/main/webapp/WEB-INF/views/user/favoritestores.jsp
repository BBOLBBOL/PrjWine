<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
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
  #table { 
         width: 70%; 
         margin: 0 auto; /* 수평 가운데 정렬 */
         border-collapse: collapse; /* 테이블 셀 경계를 합칩니다. */
      }

      /* 테이블 헤더 스타일 */
      #table th { 
         background-color: #f2f2f2; /* 헤더 배경색 */
         border: 1px solid #dddddd; /* 테두리 선 스타일 */
         padding: 10px; /* 셀 안 여백 */
         text-align: center; /* 가운데 정렬 */
         font-weight: bold; /* 텍스트 굵게 표시 */
      }

      /* 테이블 내용 스타일 */
      #table td { 
         border: 2px solid #dddddd; /* 테두리 선 스타일 */
         padding: 10px; /* 셀 안 여백 */
         text-align: center; /* 가운데 정렬 */
      }
      
      /* 첫번째 열의 td들 색변경 */
      .first-row td {
      background-color: #f2f2f2;
      } 
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
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
               <br>
                  <h1>관심매장</h1>
                  <br>
                  <p>User Information</p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <br>
   <br>
	<table id="table">
	<tr class="first-row">
		<th>매장이름</th>
		<th>매장주소</th>
		<th>관심매장 삭제</th>
	</tr>
	<c:forEach var="favorite" items="${favorites}">
	<tr>
		<td><a href="StoreInfo?s_no=${favorite.s_no }" class="nav-link">${favorite.s_name}</a></td>
		<td>${favorite.s_address }&nbsp;${favorite.s_detailAddress }</td>
		<td><a href="/UserFavoriteDelete?u_no=${favorite.u_no }&s_no=${favorite.s_no}" class="btn btn-primary" onclick="confirmDelete();">삭제</a></td>
	</tr>
   </c:forEach>
	</table>
</body>
<script>
function confirmDelete() {
    if (confirm('삭제하시겠습니까?')) {
        alert("삭제되었습니다.");
    } else {
    	alert("삭제 실패");
    	event.preventDefault(); // 링크를 직접 실행하지 않음
    }
}
      


</script>
</html>