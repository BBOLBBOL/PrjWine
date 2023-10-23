<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>시음회 등록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
.logintitle {
    text-align: center;
    margin-top: 40px;
}

.container1 {
    margin: 0 auto; /* 상하여백 좌우여백 */
    max-width: 600px; /* 최대 폭 지정 */
}

form {
    padding: 20px;
    border: 2px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
}

form div {
    margin-bottom: 15px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input[type="text"],
textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

textarea {
    resize: vertical; /* 세로 크기 조절 허용 */
    min-height: 100px; /* 최소 높이 지정 */
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

table, th, td {
    border: 1px solid #ccc;
}

th, td {
    padding: 10px;
    text-align: center;
}

button[type="submit"] {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    font-weight: bold;
    margin: 20px auto;
    display: block;
}

button[type="submit"]:hover {
    background-color: #0056b3;
}
form#search-form input[type="search"] {
	width: 150px;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-right: 10px;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	
  function make_table( wineList ) {
	  let table = 
	  `<tr>
	  <th></th>
	  <th>와인 이름</th>
	  <th>와인 종류</th>
	  <th>국가</th>
	  <th>빈티지</th>
	 </tr>`;
	
	 console.log('table', wineList[0]);
	 for (let i=0;i < wineList.length; i++) {
		let wine = wineList[i];
		console.log(wine.w_name);
		table += '<tr>';
		table += '<td>' + '<input type="radio" name="w_no" value="' + wine.w_no + '" /></td>';
		table += '<td>' + wine.w_name     + '</td>';
		table += '<td>' + wine.w_kind     + '</td>';
		table += '<td>' + wine.w_location + '</td>';
		table += '<td>' + wine.w_vintage  + '</td>';		  
		table += '</tr>'
     }
	 return table;
  }

  $(function() {
	
	  $('#btnSearch').on('click', function() {
		  
		  $.ajax({		
			  url   : '/Tasting/WineList' ,   // RestController
			  data  : {
				  searchOption  : $('[name=searchOption]').val(),
				  searchKeyword : $('[name=searchKeyword]').val(),
				  kindOption    : $('[name=kindOption]').val()
			  }			  
		  })
		  .done( function(result) {
			  console.log(result);			  
	          $('#searchWineList').html( make_table( result ) );			  
		  })
		  .fail( function(xhr) {
			  alert(xhr.status + ':' + xhr.textStatus)
		  });
		 
	  })
	  
  })
</script>
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

	<div class="container1">
    <form action="/TastingWrite" method="post" id="search-form">
		<input type="hidden" name="s_no"            value="${sloginVo.s_no}">
		
        <div>
            <label>시음회 이름</label>
            <input type="text" name="t_title" id="t_title"  placeholder="시음회 이름을 입력하세요" autocomplete="off">
        </div>
        <div>
            <label>시음회 내용 설명</label>
            <textarea name="t_cont" id="t_cont" placeholder="시음회 내용 설명을 입력하세요" autocomplete="off"></textarea>
        </div>
        	<div class="container1">
				<div>
					<select id="select" name="searchOption">
						<option value="w_name">이름</option>
						<option value="w_location">국가</option>
						<option value="w_vintage">빈티지</option>
					</select>
					<select id="select2" name="kindOption">
						<option value="w_kind">전체</option>
						<option value="1">PORT</option>
						<option value="2">DESSERT</option>
						<option value="3">RED</option>
						<option value="4">ROSE</option>
						<option value="5">WHITE</option>
						<option value="6">SPARKLING</option>
					</select>
				<input id="search" type="search" name="searchKeyword" placeholder="검색어 입력" autocomplete="off">
				<button type="button" id="btnSearch" >검색</button>
				</div>
			</div>
			<div style="overflow-y: auto; max-height: 340px;" id="div1">
				<table id="searchWineList" name="${w_no}" >
				
				</table>
			</div>
        <div>
    	<label>시음회 날짜/시간</label>
   		 	<input type="datetime-local" id="datetime" name="t_date">
		</div>
        <div>
            <label>참가비</label>
            <input type="number" name="t_cost" id="t_cost" placeholder="숫자만입력:>" autocomplete="off">
        </div>
    	<button type="submit" id="registerButton">등록</button>
    </form>
</div>
<script>

document.getElementById("registerButton").addEventListener("click", function(event) {
    var t_title = document.getElementById("t_title").value;
    var t_cont = document.getElementById("t_cont").value;
    var t_date = document.getElementById("datetime").value;
    var t_cost = document.getElementById("t_cost").value;
    var searchKeyword = document.getElementById("search").value;
    
    if (t_title === "" || t_cont === "" || t_date === "" || t_cost === "" || searchKeyword === "") {
        alert("모든 필수 입력란을 작성해주세요.");
        event.preventDefault();
        return;
    }

    var confirmation = confirm("등록하시겠습니까?");
    if (!confirmation) {
        // 아니요를 누르면 이벤트를 막음
        event.preventDefault();
    }
});


</script>
</body>
</html>
