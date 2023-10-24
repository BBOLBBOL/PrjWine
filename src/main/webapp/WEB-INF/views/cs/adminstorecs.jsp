<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>고객 센터(유저)</title>
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
    crossorigin="anonymous">
<style>

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
        cursor: pointer;
    }
      .event-button {
        width: 70%; /* 중앙 70% 폭 설정 */
        margin: 0 auto; /* 가운데 정렬 */
    }

    .event-button ul {
        list-style-type: none;
        padding: 0;
        display: flex;
        justify-content: space-between;
    }

    .promotion-link {
        flex: 1;
        text-align: center; /* 가운데 정렬 */
    }

    .promotion-link a {
        display: block;
        text-decoration: none;
        color: #000;
        font-weight: bold;
        padding: 10px; /* 내부 여백 설정 */
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    
.back-home-button {
    text-align: center; /* 가로 중앙 정렬 */
    display: flex;
    justify-content: center; /* 가로 중앙 정렬 */
    align-items: center; /* 수직 중앙 정렬 */
    height: 100vh; /* 수직 중앙 정렬에 필요한 높이 설정 (옵션) */
    margin-top: -440px;
}	
</style>
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
<div class="breadcrumb-section breadcrumb-bg">
         <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
               <br>
               <h1>고객 센터(매장)</h1>
               <br>
               <p>Customer Service</p>
            </div>
         </div>
      </div>
<br>
<br>
    <main>
        <div class="event-button">
		<ul>
			<li class="promotion-link"><a href="/CsAllUser">유저 고객센터</a></li>
			<li class="promotion-link"><a href="/CsAllStore">매장 고객센터</a></li>
		</ul>
	</div>

        <table id="table">
            <tr>
                <th>문의번호</th>
                <th>문의자ID</th>
                <th>카테고리</th>
                <th>문의제목</th>
                <th>문의날짜</th>
                <th>답변날짜</th>
            </tr>

            <!-- 검색하지 않았을떄  -->
            <c:if test="${not empty allStore}">
                <c:forEach var="scs" items="${allStore }">
                    <tr>
                         <td><a href="/AdminStoreView?scs_idx=${scs.scs_idx}" class="nav-link active" >${scs.scs_idx }</a></td>
                        <td><a href="/AdminStoreView?scs_idx=${scs.scs_idx}" class="nav-link active" >${scs.s_id}</a></td>
                        <td><a href="/AdminStoreView?scs_idx=${scs.scs_idx}" class="nav-link active">${scs.scs_category}</a></td>
                        <td><a href="/AdminStoreView?scs_idx=${scs.scs_idx}" class="nav-link active">${scs.scs_title}</a></td>
                        <td><a href="/AdminStoreView?scs_idx=${scs.scs_idx}" class="nav-link active">${scs.sw_date}</a></td>
                        <td><a href="/AdminStoreView?scs_idx=${scs.scs_idx}" class="nav-link active">${scs.res_date}</a></td>
                    </tr>
                </c:forEach>
            </c:if>

        </table>
            <div style="display: block; text-align: center;">

    <c:if test="${pds.startPage != 1 }">
    <a href="/CsAllStore?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
         <b>${p}</b> 
       </c:when>
        <c:when test="${p != page.nowPage }">
          <a href="/CsAllStore?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
        </c:when>
      </c:choose>
    </c:forEach>
 <c:if test="${pds.endPage != pds.lastPage }">
   <a href="/CsAllStore?nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
 </c:if>
 </div>
        

        <!-- 매장 홈으로 버튼 -->
        <div class="back-home-button text-center">
        <a href="/" class="btn btn-secondary">홈버튼</a>
        </div>
 
    </main>
    <script>
        
    </script>
</body>
</html>