<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<title>매장목록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
               </div>


	<table id="table">
	<tr class="first-row">
	    <th><input type="checkbox" id="allCheck"></th>
		<th>매장No</th>
		<th>매장ID</th>
		<th>매장이름</th>
		<th>매장주소</th>
		<th>매장사업자번호</th>
		<th>매장번호</th>
		<th>매장설명</th>
	</tr>
	
	
	<c:forEach var="storeList" items="${storeList }">
	<tr>
	    <td><input type="checkbox" name="rowCheck" id="rowCheck" value="${storeList.s_no }"></td>
		<td><a href="StoreInfo?s_no=${storeList.s_no }" class="nav-link">${storeList.s_no }</a></td>
		<td><a href="StoreInfo?s_no=${storeList.s_no }" class="nav-link">${storeList.s_id}</a></td>
		<td><a href="StoreInfo?s_no=${storeList.s_no }" class="nav-link">${storeList.s_name }</a></td>
		<td><a href="StoreInfo?s_no=${storeList.s_no }" class="nav-link">${storeList.s_address } &nbsp; ${storeList.s_detailAddress }</a></td>
		<td><a href="StoreInfo?s_no=${storeList.s_no }" class="nav-link">${storeList.s_sn }</a></td>
		<td><a href="StoreInfo?s_no=${storeList.s_no }" class="nav-link">${storeList.s_phone }</a></td>
		<td><a href="StoreInfo?s_no=${storeList.s_no }" class="nav-link">${storeList.s_cont }</a></td>
	</tr>
	</c:forEach>
	</table>
	<div style="display: block; text-align: center;">

    <c:if test="${pds.startPage != 1 }">
    <a href="/AdminStoreList?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
         <b>${p}</b> 
       </c:when>
        <c:when test="${p != page.nowPage }">
          <a href="/AdminStoreList?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
        </c:when>
      </c:choose>
    </c:forEach>
 <c:if test="${pds.endPage != pds.lastPage }">
   <a href="/AdminStoreList?nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
 </c:if>

</div>
	 <a type="button" class="btn btn-primary" onclick="deleteValue();">삭제</a>
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
	   var s_no =  ${s_no};
	   var url  =  "/AdminStoreListDelete?s_no" + s_no;
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