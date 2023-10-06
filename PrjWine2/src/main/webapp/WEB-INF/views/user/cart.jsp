<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>장바 구니</title>
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/common.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
   <style>
      /* 전체 테이블 스타일 */
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
         border: 1px solid #dddddd; /* 테두리 선 스타일 */
         padding: 10px; /* 셀 안 여백 */
         text-align: center; /* 가운데 정렬 */
      }

      /* 테이블 내용 중 텍스트가 왼쪽 정렬되어야 하는 셀 */
      #table td:nth-child(2) { 
         text-align: center; /* 왼쪽 정렬 */
      }

      /* 취소요청 버튼 스타일 */
      #table input[type="button"] { 
         background-color: #ff0000; /* 배경색 */
         color: #ffffff; /* 글자색 */
         border: none; /* 테두리 없음 */
         padding: 5px 10px; /* 여백 */
         cursor: pointer; /* 포인터로 마우스 커서 변경 */
      }
   </style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp" %>
<h1 style="text-align: center; margin-top: 60px; margin-bottom: 120px;">장바구니</h1>
   <main>
      
      
   <!-- 게시물 목록 -->
   <table id="table">
   
   <tr>
     <th></th>   <!-- 체크박스추가 -->
     <th>No.</th>
     <th>와인이름</th>
     <th>와인매장</th>
     <th>수량</th>
     <th>단가</th>
     <th>총가격</th>
   </tr>
   <c:forEach var="cart" items="${cartList}">
     <tr>
        <th>${cart.c_idx}</th>
        <th>${cart.w_name}</th>
        <th>${cart.s_name}</th>
        <th>${cart.c_count}</th>
        <th>${cart.w_price}</th>
        <th>${cart.c_allprice}</th>
</tr>

    </c:forEach>
   </table>   
    <button id="paymentButton">결제</button>
      <button id="deleteButton">삭제</button>
   </main>
</body>
</html>