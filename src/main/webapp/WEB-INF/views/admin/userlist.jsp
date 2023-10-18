<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>판매기록</title>
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

      /* 테이블 내용 중 텍스트가 왼쪽 정렬되어야 하는 셀 */
      #table td:nth-child(2) { text-align: center; /* 왼쪽 정렬 */ }
       select { padding: 5px; }
      
      /* 첫번째 열의 td들 색변경 */
      .first-row td {
      background-color: #f2f2f2;
      } 
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
   <!-- jquery -->
   <script src="/assets/js/jquery-1.11.3.min.js"></script>
   <!-- bootstrap -->
   <script src="/assets/bootstrap/js/bootstrap.min.js"></script>
   <!-- count down -->
   <script src="/assets/js/jquery.countdown.js"></script>
   <!-- isotope -->
   <script src="/assets/js/jquery.isotope-3.0.6.min.js"></script>
   <!-- waypoints -->
   <script src="/assets/js/waypoints.js"></script>
   <!-- owl carousel -->
   <script src="/assets/js/owl.carousel.min.js"></script>
   <!-- magnific popup -->
   <script src="/assets/js/jquery.magnific-popup.min.js"></script>
   <!-- mean menu -->
   <script src="/assets/js/jquery.meanmenu.min.js"></script>
   <!-- sticker js -->
   <script src="/assets/js/sticker.js"></script>
   <!-- main js -->
   <script src="/assets/js/main.js"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>유저목록</h1>
                  <br>
                  <p>Admin</p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <br>
   <br>

	<table id="table">
	<tr class="first-row">
	    <th><input type="checkbox" id="allCheck"></th>
		<th>고객No</th>
		<th>고객ID</th>
		<th>고객이름</th>
		<th>고객주소</th>
		<th>고객번호</th>
		<th>고객포인트</th>
	</tr>
	
	
	<c:forEach var="userList" items="${userList }">
	<tr>
	    <td><input type="checkbox" name="rowCheck" id="rowCheck" value="${userList.u_no }"></td>
		<td>${userList.u_no }</td>
		<td>${userList.u_id}</td>
		<td>${userList.u_name }</td>
		<td>${userList.u_address } &nbsp; ${userList.u_detailAddress }</td>
		<td>${userList.u_phone }</td>
		<td>${userList.u_point }</td>
	</tr>
	</c:forEach>
	</table>
	<a type="button" class="btn btn-primary" onclick="deleteValue();">삭제</a>
<script>
//전체 체크    
var chkObj  =  document.getElementsByName("rowCheck");
var rowCnt  =  chkObj.length;

$("input[id='allCheck']").click(function() {
   var chk_listArr  =  $("input[name='rowCheck']");
   for (var i=0; i<chk_listArr.length; i++) {
      chk_listArr[i].checked  =  this.checked;
   }
});

function deleteValue() {
	   var u_no =  ${u_no};
	   var url  =  "/AdminUserListDelete?u_no" + u_no;
	   var valueArr  =  [];
	   var list  =  $("input[name='rowCheck']");
	   for(var i = 0; i < list.length; i++) {
	      if(list[i].checked) {
	         valueArr.push(list[i].value);
	      }
	   }
	   if(valueArr.length == 0) {
	      alert("선택하신 게 없습니다.");
	   }
	   else {
	      var chk  =  confirm("정말 삭제하시겠습니까?");
	      $.ajax({
	         url  :  url,
	         type : 'post',
	         traditional : true,
	         data : {
	            'valueArr[]'  :  valueArr
	         },
	         success: function(jdata) {
	            if(jdata == 1) {
	               alert("삭제성공");
	               location.reload();
	               
	            }
	            else {
	               alert("삭제 실패");
	            }
	         }
	      });
	   }
	}  // deleteValue


</script>
</body>
</html>