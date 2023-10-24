<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이벤트목록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>
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
   <div class="event-button">
		<ul>
			<li class="promotion-link"><a href="/AdminEvent">이달의 프로모션</a></li>
			<li class="promotion-link"><a href="/AdminEndEventList">종료된 프로모션</a></li>
		</ul>
	</div>

	<table id="table">
	<tr class="first-row">
	    <th><input type="checkbox" id="allCheck"></th>
		<th>이벤트제목</th>
		<th>주최매장</th>
		<th>미리보기사진</th>
		<th>메인사진</th>
		<th>이벤트시작날짜</th>
		<th>이벤트마감날짜</th>
	</tr>
	
	
	<c:forEach var="admineventendlist" items="${admineventendlist }">
	<tr>
	    <td><input type="checkbox" name="rowCheck" id="rowCheck" value="${admineventendlist.e_idx }"></td>
		<td><a href="/EventCont?e_idx=${admineventendlist.e_idx }" class="nav-link">${admineventendlist.e_title }</a></td>
		<td><a href="/EventCont?e_idx=${admineventendlist.e_idx }" class="nav-link">${admineventendlist.s_no}</a></td>
		<td><a href="/EventCont?e_idx=${admineventendlist.e_idx }" class="nav-link"><img src="/imgpage/${admineventendlist.e_fimg}" style="max-width: 100px;
  max-height: 100px;
  overflow: hidden; /* 이미지를 컨테이너 크기로 자르기 */"></a></td>
		<td><a href="/EventCont?e_idx=${admineventendlist.e_idx }" class="nav-link"><img src="/imgpage/${admineventendlist.e_bimg}" style="max-width: 100px;
  max-height: 100px;
  overflow: hidden; /* 이미지를 컨테이너 크기로 자르기 */"></a></td>
		<td><a href="/EventCont?e_idx=${admineventendlist.e_idx }" class="nav-link">${admineventendlist.e_sdate }</a></td>
		<td><a href="/EventCont?e_idx=${admineventendlist.e_idx }" class="nav-link">${admineventendlist.e_edate }</a></td>
	</tr>
	</c:forEach>
	</table>
	<br>
	<div style="display: block; text-align: center;">

    <c:if test="${pds.startPage != 1 }">
    <a href="/AdminEndEventList?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
         <b>${p}</b> 
       </c:when>
        <c:when test="${p != page.nowPage }">
          <a href="/AdminEndEventList?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
        </c:when>
      </c:choose>
    </c:forEach>
 <c:if test="${pds.endPage != pds.lastPage }">
   <a href="/AdminEndEventList?nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
 </c:if>

</div>
<div class="back-home-button text-center">
	 <a type="button" class="btn btn-danger"" onclick="deleteValue();">삭제</a>
	 </div>
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
	   var e_idx =  ${e_idx};
	   var url  =  "/AdminEndEventListDelete?e_idx" + e_idx;
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