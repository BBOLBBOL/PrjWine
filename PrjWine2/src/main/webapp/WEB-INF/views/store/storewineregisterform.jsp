<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>  
    
<!DOCTYPE html>
<html>
<head>
   <%@include file="/WEB-INF/include/nav.jsp" %>
<title>Insert title here</title>
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<h1 style="text-align: center; margin-top: 60px; margin-bottom: 120px;">매장 와인 등록</h1>
   <main>
      
   <div class="container">
    <div class="row">
       <div class="col-md-6">
          <form action="/StoreWineSearch" method="POST" class="form-inline">
             <input type="text" name="w_name" class="form-control" placeholder="검색어 입력">

              <!-- 국가 선택 셀렉트 박스 -->
        <select class="form-select" name="w_location">
            <option value="">국가 선택</option>
            <option value="Israel">이스라엘</option>
            <option value="Argentina">아르헨티나</option>
            <option value="Macedonia">마케도니아</option>
            <option value="Italy">이탈리아</option>
            <option value="Spain">스페인</option>
            <option value="Moldova">몰도바</option>
            <option value="France">프랑스</option>
            <option value="Portugal">포르투갈</option>
            <option value="Germany">독일</option>
            <option value="Canada">캐나다</option>
            <option value="Hungary">헝가리</option>
            <option value="Greece">그리스</option>
            <option value="Switzerland">스위스</option>
            <option value="United States">미국</option>
            <option value="Austria">오스트리아</option>
            <option value="Georgia">조지아</option>
            <option value="Brazil">브라질</option>
            <option value="Slovenia">슬로베니아</option>
            <option value="Romania">루마니아</option>
            <option value="Chile">칠리</option>
            <option value="South Africa">남아프리카 공화국</option>
            <option value="Uruguay">우루과이</option>
            <option value="Australia">호주</option>
            <option value="New Zealand">뉴질랜드</option>
        </select>

        <!-- 종류 선택 셀렉트 박스 -->
        <select class="form-select" name="w_kind">
            <option value="와인종류">종류 선택</option>
            <option value="PORT">PORT</option>
            <option value="DESSERT">DESSERT</option>
            <option value="RED">RED</option>
            <option value="ROSE">ROSE</option>
            <option value="WHITE">WHITE</option>
            <option value="SPARKLING">SPARKLING</option>
            <!-- 추가 종류 옵션들 -->
        </select>
        	<input type="text" name="w_vintage" class="form-control" placeholder="빈티지 입력">
                <button type="submit" class="btn btn-primary">검색</button>
            </form>
        </div>
        <div class="col-md-6">
            <!-- 열의 좌측에 배치할 내용 -->
        </div>
    </div>
</div>

<!-- 게시물 목록 -->
<table id="table">
   <tr>
     <th>공란</th>
     <th>이름</th>
     <th>종류</th>
     <th>국가</th>
     <th>빈티지</th>
     <th>수량</th>
     <th>가격</th>
   </tr>
   <c:forEach var="store" items="${searchList}" varStatus="loop">
   <tr>
     <td colspan="1" style="text-align:right">
        <form>
           <label>
              <input type="radio" value="${loop.index + 1}" checked>
              옵션 ${loop.index + 1}
           </label>
        </form>
     </td>
     <th>${store.w_name}</th>
     <th>${store.w_kind}</th>
     <th>${store.w_location}</th>
     <th>${store.w_vintage}</th>
     <th><input type="text" name="inputData1"></th>
     <th><input type="text" name="inputData2"></th>
   </tr>
   </c:forEach>
</table>

   <form action="/StoreWineRegister" method="post">
     <button type="submit" class="btn btn-primary">등록</button>
   </form> 
   
   </main>
</body>
</html>