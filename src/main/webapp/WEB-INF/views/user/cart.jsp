<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>장바 구니</title>
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
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

      #deleteButton {
      background-color: #ff0000; /* 배경색 */
      color: #ffffff; /* 글자색 */
      border: none; /* 테두리 없음 */
      padding: 10px 15px; /* 여백 */
      cursor: pointer; /* 포인터로 마우스 커서 변경 */
   }
 .btn1 {
    font-family: 'Poppins', sans-serif;
    display: inline-block;
    background-color: #F28123;
    color: #fff;
    padding: 13px 25px;
    border-radius: 50px;
    transition: 0.3s;
    box-sizing: border-box;
    border: none; /* 경계선 없음 */
    cursor: pointer; /* 포인터 커서로 변경 */
    font-weight: 700;
    font-size: 15px;
    border: none;
}

/* 호버(마우스 오버) 시의 버튼 스타일 */
.btn1:hover {
    background-color: #000; 
    color: #F28123;
}  
   
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>전체매장</h1>
                  <br>
                  <p>Store Information</p>
               </div>
      </div>
   </div>
   <br>
   <br>
   <main>
      
   <form action="/UserPayment?u_no=${u_no }" method="POST" id="formPayment">
   <input type="hidden" name="cartids" value="" />
   
   <!-- 게시물 목록 -->
   <table id="table">
   
   <tr>
     <th><input type="checkbox" id="allCheck" /></th>
     <th>와인이름</th>
     <th>와인매장</th>
     <th>수량</th>
     <th>단가</th>
     <th>총가격</th>
   </tr>
   <c:forEach var="cart" items="${cartList}">
            <input type="hidden" name="w_amount" value="${cart.w_amount}" />
            <input type="hidden" name="c_count" value="${cart.c_count}" />
     <tr>   
        <th><input type="checkbox" name="rowCheck" id="rowCheck" value="${cart.c_idx }" /></th>
        <th>${cart.w_name}</th>
        <th>${cart.s_name}</th>
        <th>${cart.c_count}</th>
        <th>${cart.w_price}</th>
        <th>${cart.c_allprice}</th>
</tr>

    </c:forEach>
   </table>
   <br><br>
    <div class="text-center">
    <input type="submit" value="결제" class="btn btn-outline-info" >
    <a type="button" class="btn1" onclick="deleteValue();">삭제</a>
    </div> 
    </form>
    </main>
<script>

$(function() {
   
   // 전체 체크    
   var chkObj  =  document.getElementsByName("rowCheck");
   var rowCnt  =  chkObj.length;
   
   $("input[id='allCheck']").click(function() {
      var chk_listArr  =  $("input[name='rowCheck']");
      for (var i=0; i<chk_listArr.length; i++) {
         chk_listArr[i].checked  =  this.checked;
      }
   });

   // submit 클릭
   $("#formPayment").on('submit', function(e) {
      let cartIds = '';
      let checkedRows = $('#rowCheck:checked'); 
      if(checkedRows.length == 0) {
          alert("선택하신 게 없습니다.");
          e.preventDefault();
       }
      for(let i =0;i<checkedRows.length;i++) {         
         cartIds += checkedRows[i].value;
         if(  i < checkedRows.length-1 )
            cartIds += ',';
      }
      $('[name=cartids]').val(cartIds); 
       
    //  e.preventDefault();
      
   })
    
}); 

function deleteValue() {
   var u_no =  ${u_no};
   var url  =  "/CartDelete?u_no=" + u_no;
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