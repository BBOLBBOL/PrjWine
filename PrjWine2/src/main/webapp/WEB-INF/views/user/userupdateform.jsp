<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>

.logintitle {
	text-align: center;
	margin-top: 40px;
}
.container{
   margin: 0 auto; /* 상하여백 좌우여백 */
}
table{
   margin: 0 auto;
   border: 2px solid;
   border-collapse: collapse;
}
tr > td:nth-child(1) {
   text-align: center;
}
tr, td{
   border: 2px solid;
}
.redFont{
   color: red;
   font-size: 12px;
   font-style: italic;
}
textarea{
   resize: none;
}
 
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
 <%@include file="/WEB-INF/include/nav.jsp" %>

<h2 class="logintitle">고객 정보수정</h2>
<div class="container">
 <form action="" method="POST">
   <table>
      <colgroup>
         <col width="25%">
         <col width="*">
      </colgroup>
      <tr>
         <td colspan="2" style="background-color: #cee3f6; font-weight: bold;">
            <span class="redFont">(*필수입력)</span>
            회원기본정보         
         </td>
      </tr>
      <tr>
      <tr>
         <td>
            <span class="redFont">*</span>기존비밀번호:
         </td>
         <td>
            <input type="password" name="u_pw" style="width: 200px">
         </td>
      </tr>
      <tr>
         <td>
            <span class="redFont">*</span>신규비밀번호:
         </td>
         <td>
            <input type="password" name="u_pw" style="width: 200px">
         </td>
      </tr>
      <tr>
         <td>
            생일:
         </td>
         <td>
            <div>
               <input type="text" name="u_birth" placeholder="태어난년도" style="width: 200px">
            </div>
         </td>
      </tr>
      <tr>
         <td>
            주소:
         </td>
         <td>
            <div>
		   		<select name="u_si" id="u_si" onchange="itemChange()">
		     		<option value="서울">서울</option>
		     		<option value="부산">부산</option>
		     		<option value="제주">제주</option>
		   		</select>
		   		&nbsp;
		   		<select name="u_gu" id="u_gu">
		   		</select>	
            </div>
         </td>
      </tr>
      <tr>
      	<td>
      	   연락처:
      	</td>
      	<td>
      	   <div>
      	   	   <input type="text" name="u_phone" placeholder="(-)빼고 입력"> 
      	   </div>
      	</td>
      </tr>
      <tr>
      	<td colspan="2">
      	    <div>
      	    	<button type="submit">수정하기</button>
      	    </div>
      	</td>
      </tr>
   </table>
 </form>
</div>


		

  <script>
	function itemChange(){
		 
		var seoul = ["강남","서초","송파"];
		var busan = ["동래","서면","광안리","해운대"];
		var zezu = ["애월","서귀포","땡땡"];
		 
		var selectItem = $("#u_si").val();
		 
		var changeItem;
		  
		if(selectItem == "서울"){
		  changeItem = seoul;
		}
		else if(selectItem == "부산"){
		  changeItem = busan;
		}
		else if(selectItem == "제주"){
		  changeItem =  zezu;
		}
		 
		$('#u_gu').empty();
		 
		for(var count = 0; count < changeItem.length; count++){                
		                var option = $("<option>"+changeItem[count]+"</option>");
		                $('#u_gu').append(option);
		            }
	}
  </script>
</body>
</html>









