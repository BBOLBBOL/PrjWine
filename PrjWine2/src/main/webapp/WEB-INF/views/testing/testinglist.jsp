<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
   <%@include file="/WEB-INF/include/nav.jsp" %>
   <title>신청한 시음회 목록</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
   <link rel="stylesheet"  href="/css/common.css" />
</head>
<body>
<h1 style="text-align: center; margin-top: 60px; margin-bottom: 120px;">시음회 정보</h1>
   <main>
      
   <!-- 메뉴 목록 -->
      
   <!-- 게시물 목록 -->
   <div class="mb-3"><a href="#" class="btn btn-secondary ml-auto">새글작성</a></div>
   <table id="table">
   <tr>
     <th>주최매장</th>
     <th>시음회이름</th>
     <th>날짜/시간</th>
     <th>참가비</th>     
   </tr>
   
    <tr>
     <td>서면와인</td>
     <td>와인시음회3</td>
     <td>2023-10-25</td>
     <td>10000</td>
   </tr>
   <tr>
     <td>부전와인</td>
     <td>와인시음회2</td>
     <td>2023-11-11</td>
     <td>10000</td>
   </tr>
   <tr>
     <td>덕천와인</td>
     <td>와인시음회1</td>
     <td>2029-12-31</td>
     <td>10000</td>
   </tr>
   </table>   
   
   </main>
</body>
</html>
