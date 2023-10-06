<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<title>구매기록</title>
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
</head>
<body>
 <%@include file="/WEB-INF/include/nav.jsp" %>
	<h2 style="text-align: center; margin-top: 60px;">구매기록</h2>
	<div style="text-align: left;">
    <select>
      <option value="날짜">날짜</option>
      <option value="구매매장">구매매장</option>
      <option value="와인이름">와인이름</option>
      <option value="구매수량">구매수량</option>
      <option value="구매단가">구매단가</option>
      <option value="총가격">총가격</option>
    </select>
  </div>
	<table id="table">
	<tr class="first-row">
		<td>날짜</td>
		<td>구매매장</td>
		<td>와인이름</td>
		<td>판매와인</td>
		<td>와인당가</td>
		<td>총가격</td>
	</tr>
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	</table>
</body>
</html>