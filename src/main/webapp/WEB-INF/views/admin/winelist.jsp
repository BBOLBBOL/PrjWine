<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<title>판매기록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<<<<<<< HEAD
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
      
.search-container {
	align-items: center;
	width: 95%;
	margin-top: 50px;
	text-align: center;
}

.search-container input[type="text"] {
	background-color: #F5F5F5;
	border: 2px solid #FFA500;
	color: #333;
	padding: 5px 15px;
	border-radius: 5px;
	font-size: 16px;
	font-weight: bold;
	placeholder-color: #FFA500;
	width: 200px;
	text-align: right;
	margin-right: 10px; /* 오른쪽 여백을 주기 위해 margin-right 사용 */
}

.search-container input[type="submit"] {
	background-color: #FFA500; /* 배경색 */
	color: #FFF; /* 글자색 */
	padding: 6px 15px;
	border-radius: 5px;
	border: 2px solid #FFA500;
	/* 원하는 다른 스타일 속성들을 추가할 수 있습니다. */
}
/* 스타일 검색 폼 */
#search-form {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-left: auto;
}

/* 스타일 선택 드롭다운 */
#select,
#select2 {
    padding: 5px;
    margin: 5px;
}


.back-home-button {
 	text-align: center; /* 가로 중앙 정렬 */
	display: flex;
	justify-content: center; /* 가로 중앙 정렬 */
	margin-top: 20px; 
}	

tr th {
    background-color: #800021 !important;
  }
  
th {
      color: #ffffff !important; /* 테이블 헤더 글자색 */
      text-align: center; /* 헤더 텍스트 중앙 정렬 */
   }  
         
=======
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
      
      /* 스타일 컨테이너 */
.container {
    text-align: center;
    margin-top: 20px;
}

/* 스타일 검색 폼 */
#search-form {
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* 스타일 선택 드롭다운 */
#select,
#select2 {
    padding: 5px;
    margin: 5px;
}

/* 스타일 검색어 입력 필드 */
input[type="text"] {
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin: 5px;
}

/* 스타일 검색 버튼 */
button[type="submit"] {
    padding: 5px 10px;
    background-color: #007BFF; /* 버튼 배경색 */
    color: #fff; /* 버튼 텍스트 색상 */
    border: none;
    border-radius: 5px;
    cursor: pointer;
}


.back-home-button {
    text-align: center; /* 가로 중앙 정렬 */
    display: flex;
    justify-content: center; /* 가로 중앙 정렬 */
    align-items: center; /* 수직 중앙 정렬 */
    height: 100vh; /* 수직 중앙 정렬에 필요한 높이 설정 (옵션) */
    margin-top: -440px;
}	

      
>>>>>>> refs/remotes/origin/G
      
</style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
<div class="breadcrumb-section breadcrumb-bg">
         <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
               <br>
<<<<<<< HEAD
               <h1>와인목록</h1>
               <br>
               <p>Wine List</p>
=======
               <h1>고객 센터(매장)</h1>
               <br>
               <p>Customer Service</p>
>>>>>>> refs/remotes/origin/G
            </div>
         </div>
      </div>
<br>
<br>

   <div class="search-container">
         <form action="/AdWineSearch" method="GET" id="search-form">
            <div>
               <select id="select" name="searchOption">
                  <option value="W_NAME">이름</option>
                  <option value="W_LOCATION">국가</option>
                  <option value="W_VINTAGE">빈티지</option>
               </select>
               <select id="select2" name="kindOption">
                  <option value="W_KIND">전체</option>
                  <option value="PORT">PORT</option>
                  <option value="DESSERT">DESSERT</option>
                  <option value="RED">RED</option>
                  <option value="ROSE">ROSE</option>
                  <option value="WHITE">WHITE</option>
                  <option value="SPARKLING">SPARKLING</option>
               </select>
            <input type="text" name="searchKeyword" placeholder="검색어 입력">
            <input type="submit" value="검색">
            </div>
         </form>
      </div>

   <table id="table">
   <tr class="first-row">
       <th><input type="checkbox" id="allCheck"></th>
      <th>Wineery</th>
      <th>Wine</th>
      <th>Vintage</th>
      <th>Average</th>
      <th>Reviews</th>
      <th>Location</th>
      <th>Image</th>
      <th>Kind</th>
   </tr>
   
   
   <c:forEach var="all" items="${Allwine }">
   <tr>
       <td><input type="checkbox" name="rowCheck" id="rowCheck" value="${all.w_no }"></td>
      <td>${all.w_wineery }</td>
      <td>${all.w_name}</td>
      <td>${all.w_vintage }</td>
      <td>${all.w_avg }</td>
      <td>${all.w_reviews }</td>
      <td>${all.w_location }</td>
      <td><img class="wine-image" src="${all.w_image}" alt="와인 사진"></td>
      <td>${all.w_kind }</td>
   </tr>
   </c:forEach>
   </table>
<<<<<<< HEAD
     <div class="back-home-button text-center">
   <a type="button" class="btn btn-danger" onclick="deleteValue();">삭제</a>
   </div>
   <div class="pagination">
=======
   <br>
   <div style="display: block; text-align: center;">
>>>>>>> refs/remotes/origin/G

    <c:if test="${pds.startPage != 1}">
    <a href="/AdminWineList?nowPage=${pds.startPage - 1}&cntPerPage=${pds.cntPerPage}">&lt;</a>
</c:if>
<c:forEach begin="${pds.startPage}" end="${pds.endPage}" var="p">
    <c:choose>
        <c:when test="${p == pds.nowPage}">
            <a>${p}</a>
        </c:when>
        <c:when test="${p != pds.nowPage}">
            <a href="/AdminWineList?nowPage=${p}&cntPerPage=${pds.cntPerPage}">${p}</a>
        </c:when>
    </c:choose>
</c:forEach>
<c:if test="${pds.endPage != pds.lastPage}">
    <a href="/AdminWineList?nowPage=${pds.endPage + 1}&cntPerPage=${pds.cntPerPage}">&gt;</a>
</c:if>
</div>
<<<<<<< HEAD

=======
  <div class="back-home-button text-center">
   <a type="button" class="btn btn-danger" onclick="deleteValue();">삭제</a>
   </div>
>>>>>>> refs/remotes/origin/G
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
      var w_no =  ${w_no};
      var url  =  "/AdminWineListDelete?w_no=" + w_no;
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
         if(chk) {
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
                  event.preventDefault();
               }
            }
         });
      }
   }  // deleteValue

}
</script>
</body>
</html>