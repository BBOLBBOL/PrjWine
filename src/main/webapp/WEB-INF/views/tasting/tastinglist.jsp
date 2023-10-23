<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<title>신청한 시음회 목록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="/css/common.css" />

<style>
   /* 게시판 스타일 */
   .container {
      margin: 20px auto; /* 페이지 중앙 정렬 */
   }

   h1 {
      text-align: center; /* 제목 중앙 정렬 */
   }

   table {
      width: 100%; /* 테이블 전체 폭 사용 */
   }

   th {
      color: #ffffff !important; /* 테이블 헤더 글자색 */
      text-align: center; /* 헤더 텍스트 중앙 정렬 */
   }

   td {
      text-align: center; /* 셀 내용 중앙 정렬 */
   }

   /* 페이징 스타일 */
   .pagination {
      justify-content: center; /* 페이징 중앙 정렬 */
      margin-top: 20px; /* 페이지 상단 여백 */
   }

   .pagination a {
      color: #343a40; /* 페이지 링크 색상 */
      padding: 10px 15px; /* 페이지 링크 여백 */
      text-decoration: none; /* 밑줄 제거 */
   }

   .pagination a:hover {
      background-color: #800021; /* 호버 시 배경색 변경 */
      color: #ffffff; /* 호버 시 글자색 변경 */
   }
   tr th {
    background-color: #800021 !important;
  }
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>          
<div class="breadcrumb-section breadcrumb-bg">
         <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
               <br>
               <h1>시음회 게시판</h1>
               <br>
               <p>Wine Tasting Forum</p>
            </div>
         </div>
      </div>
<br>
<br>

<div class="container">
   
   <table class="table table-striped table-hover table-dark">
      <thead class="thead-white">
         <tr>
            <th scope="col">No.</th>
            <th scope="col">주최매장</th>
            <th scope="col">시음회이름</th>
            <th scope="col">시음회장소</th>
            <th scope="col">시음회내용</th>
            <th scope="col">날짜/시간</th>
            <th scope="col">참가비</th>
         </tr>
      </thead>
      <tbody>
         <c:forEach var="tast" items="${tastList}">
            <tr>
               <td>${tast.t_idx}</td>
               <td>${tast.s_name}</td>
               <td><a href="/TastingBoard?t_idx=${tast.t_idx}">${tast.t_title}</a></td>
               <td>${tast.s_address}${tast.s_detailaddress}</td>
               <td>${tast.t_cont}</td>
               <td><fmt:formatDate value="${tast.t_date}" pattern="yyyy-MM-dd HH:mm" /></td>
               <td>${tast.t_cost}</td>
            </tr>
         </c:forEach>
      </tbody>
   </table>
</div>
<div style="position: sticky; bottom: 0; background-color: white; padding: 10px; text-align: center;">
   <c:choose>
       <c:when test="${not empty sloginVo.s_no}">
           <form action="/TastingWriteForm?s_no=${sloginVo.s_no}" method="POST" id="search-form">
              <button type="submit" class="btn btn-primary">새글작성</button>
           </form>
        </c:when>
   </c:choose>
</div>
<div class="container">
   <div class="pagination">
      <c:choose>
         <c:when test="${pds.startPage != 1 }">
            <a href="/TastingList?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
         </c:when>
      </c:choose>
      <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
         <c:choose>
            <c:when test="${p == pds.nowPage }">
               <a class="active" href="/TastingList?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p}</a>
            </c:when>
            <c:when test="${p != page.nowPage }">
               <a href="/TastingList?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p}</a>
            </c:when>
         </c:choose>
      </c:forEach>
      <c:if test="${pds.endPage != pds.lastPage }">
         <a href="/TastingList?nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
      </c:if>
   </div>
</div>
</body>
</html>