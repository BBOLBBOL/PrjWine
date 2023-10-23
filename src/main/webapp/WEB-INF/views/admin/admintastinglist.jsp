<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<title>신청한 시음회 목록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link rel="stylesheet"  href="/css/common.css" />
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
   border: 1px solid #dddddd; /* 테두리 선 스타일 */
   padding: 10px; /* 셀 안 여백 */
   text-align: center; /* 가운데 정렬 */
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
   <main>
   <div>
   <table id="table">
      <div class="container">
               <tr>
                  <th><input type="checkbox" id="allCheck"></th>
                  <th>No.</th>
                  <th>주최매장</th>
                  <th>시음회이름</th>
                  <th>시음회장소</th>
                  <th>시음회내용</th>
                  <th>날짜/시간</th>
                  <th>참가비</th>
               </tr>
      </div>
      <div class="container">
         <c:forEach var="tastingList" items="${tast}">
            <tr>
               <td><input type="checkbox" name="rowCheck" id="rowCheck" value="${tastingList.t_idx }"></td>
               <td><a href="/TastingBoard?t_idx=${tastingList.t_idx}" class="nav-link active">${tastingList.t_idx}</a></td>
               <td><a href="/TastingBoard?t_idx=${tastingList.t_idx}" class="nav-link active">${tastingList.s_name}</a></td>
               <td><a href="/TastingBoard?t_idx=${tastingList.t_idx}" class="nav-link active">${tastingList.t_title}</a></td>
               <td><a href="/TastingBoard?t_idx=${tastingList.t_idx}" class="nav-link active">${tastingList.s_address}&nbsp;${tastingList.s_detailaddress}</a></td>
               <td><a href="/TastingBoard?t_idx=${tastingList.t_idx}" class="nav-link active">${tastingList.t_cont}</a></td>
               <td><a href="/TastingBoard?t_idx=${tastingList.t_idx}" class="nav-link active">${tastingList.t_date}</a></td>
               <td><a href="/TastingBoard?t_idx=${tastingList.t_idx}" class="nav-link active">${tastingList.t_cost}</a></td>
            </tr>
         </c:forEach>
      </div>
   </table>
   <div style="display: block; text-align: center;">

    <c:if test="${pds.startPage != 1 }">
    <a href="/AdminTastingList?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
         <b>${p}</b> 
       </c:when>
        <c:when test="${p != page.nowPage }">
          <a href="/AdminTastingList?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
        </c:when>
      </c:choose>
    </c:forEach>
 <c:if test="${pds.endPage != pds.lastPage }">
   <a href="/AdminTastingList?nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
 </c:if>

</div>
   <a type="button" class="btn btn-primary" onclick="deleteValue();">삭제</a>
   </div>
   </main>
   <script>
   // 전체 체크    
   var chkObj  =  document.getElementsByName("rowCheck");
   var rowCnt  =  chkObj.length;
   
   $("input[id='allCheck']").click(function() {
      var chk_listArr  =  $("input[name='rowCheck']");
      for (var i=0; i<chk_listArr.length; i++) {
         chk_listArr[i].checked  =  this.checked;
      }
   });
   
   
   function deleteValue() {
	   var t_idx =  ${t_idx};
	   var url  =  "/AdminTastingListDelete?t_idx" + t_idx;
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