<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>고객 정보 확인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>전체매장</h1>
                  <br>
                  <p>Store Information</p>
               </div>
            </div>
         </div>
   <br>
   <br>
<div class="container1">
    <form action="/UserUpdateForm?u_no=${u_no }" method="POST">
    	<c:forEach var="user" items="${userList }">
            <div class="mb-3">
                <label for="userId" class="form-label">아이디:</label>
                <span id="userId" class="form-text">${user.u_id }</span>
            </div>
            <div class="mb-3">
                <label for="userName" class="form-label">이름:</label>
                <span id="userName" class="form-text">${user.u_name }</span>
            </div>
            <div class="mb-3">
                <label for="userAddress" class="form-label">주소:</label>
                <span id="userAddress" class="form-text">${user.u_address}&nbsp;${user.u_detailAddress}</span>
            </div>
            <div class="mb-3">
                <label for="userPhone" class="form-label">연락처:</label>
                <span id="userPhone" class="form-text">${user.u_phone }</span>
            </div>
            <div class="mb-3">
                <label for="userPoint" class="form-label">보유 포인트:</label>
                <span id="userPoint" class="form-text">${user.u_point }</span>
            </div>
        </c:forEach>
        <div class="text-center">
          <div class="btn-group">
             <button type="button" class="btn btn-primary mx-2" onclick="location.href='/'">메인 화면</button>
             <button type="submit" class="btn btn-primary mx-2">수정하기</button>
             <a href="UserPwUpdateForm?u_no=${u_no }" class="btn btn-primary mx-2">비밀번호 변경</a>
          </div>
        </div>
    </form>
</div>

</body>
</html>
