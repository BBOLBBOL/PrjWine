<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<style>
.logintitle {
	text-align: center;
	margin-top: 40px;
}

.container {
	margin: 0 auto; /* 상하여백 좌우여백 */
}

table {
	margin: 0 auto;
	border: 2px solid;
	border-collapse: collapse;
}

tr>td:nth-child(1) {
	text-align: center;
}

tr, td {
	border: 2px solid;
}

.redFont {
	color: red;
	font-size: 12px;
	font-style: italic;
}

textarea {
	resize: none;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>



</head>
<body>
	<%@include file="/WEB-INF/include/nav.jsp"%>

	<h2 class="logintitle">매장 회원가입</h2>
	<div class="container">
		<form action="/StoreJoin" method="POST">
			<table>
				<colgroup>
					<col width="25%">
					<col width="*">
				</colgroup>
				<tr>
					<td colspan="2"
						style="background-color: #cee3f6; font-weight: bold;"><span
						class="redFont">(*필수입력)</span> 회원기본정보</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>아이디:</td>
					<td><input type="text" name="s_id" style="width: 200px">
						<input type="button" value="중복확인"></td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>비밀번호:</td>
					<td><input type="password" name="s_pw" style="width: 200px">
					</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>매장이름:</td>
					<td><input type="text" name="s_name" style="width: 200px">
					</td>
				</tr>
				<tr>
					<td>사업자 등록 번호:</td>
					<td>
						<div>
							<input type="text" name="s_sn" placeholder="(-)빼고 입력"
								style="width: 200px" class="redFont">
						</div>
					</td>
				</tr>
				<tr>
					<td>주소:</td>
					<td>
						<div>
							<select name="s_si" id="s_si" onchange="itemChange()" class="redFont">
								<option value="서울">서울</option>
								<option value="부산">부산</option>
								<option value="제주">제주</option>
							</select> &nbsp; <select name="s_gu" id="s_gu">
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td>연락처:</td>
					<td>
						<div>
							<input type="text" name="s_phone" placeholder="(-)빼고 입력" class="redFont">
						</div>
					</td>
				</tr>
				<tr>
					<td>매장소개:</td>
					<td>
						<div>
							<textarea cols="50" rows="10" style="width: 200px" name="s_cont"
								placeholder="매장소개를 입력해주세요 (120자내)"></textarea>
						</div>
					</td>
				</tr>
				<tr>
					<td>매장사진:</td>
					<td>
						<div>
							<input type="file" id="s_img" accept="image/*" /><br> <img
								id="previewImage" src="#" alt="미리 보기"
								style="max-width: 300px; display: none;">

						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div>
							<button class="btn btn-primary" type="submit">회원가입</button>
							<a class="btn btn-primary" href="/" role="button">홈으로가기</a>
						</div>
					</td>
				</tr>
			</table>					
		</form>
	<script>
   

	</script>
		
	</div>
	<input type="button" value="뒤로가기" onclick="location.href='/'"
		style="margin: auto">



	<script>
		function itemChange() {
			// 주소 등록
			var seoul = [ "강남", "서초", "송파" ];
			var busan = [ "동래", "서면", "광안리", "해운대" ];
			var zezu = [ "애월", "서귀포", "땡땡" ];

			var selectItem = $("#s_si").val();

			var changeItem;

			if (selectItem == "서울") {
				changeItem = seoul;
			} else if (selectItem == "부산") {
				changeItem = busan;
			} else if (selectItem == "제주") {
				changeItem = zezu;
			}

			$('#s_gu').empty();

			for (var count = 0; count < changeItem.length; count++) {
				var option = $("<option>" + changeItem[count] + "</option>");
				$('#s_gu').append(option);
			}
		}
		//이미지 파일 미리보기
		const imageInput = document.getElementById('s_img');
        const previewImage = document.getElementById('previewImage');
        
        imageInput.addEventListener('change', (event) => {
            const selectedFile = event.target.files[0];
            
            if (selectedFile) {
                const reader = new FileReader();
                
                reader.onload = (e) => {
                    previewImage.src = e.target.result;
                    previewImage.style.display = 'block';
                };
                
                reader.readAsDataURL(selectedFile);
            } else {
                previewImage.src = '#';
                previewImage.style.display = 'none';
            }
        });
	</script>
</body>
</html>



