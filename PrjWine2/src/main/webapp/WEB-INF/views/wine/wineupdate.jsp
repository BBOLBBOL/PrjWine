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

	<h2 class="logintitle">와인 정보 수정</h2>
	<div class="container">
		<form action="/WineJoin" method="POST">
			<table>
				<colgroup>
					<col width="25%">
					<col width="*">
				</colgroup>
				<tr>
					<td colspan="2"
						style="background-color: #cee3f6; font-weight: bold;"><span
						class="redFont">(*필수입력)</span> 와인정보입력</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>와인 이름:</td>
					<td><input type="text" name="w_name" style="width: 200px">
					</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>생산 국가:</td>
					<td><input type="text" name="w_nation" style="width: 200px">
					</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>품종:</td>
					<td><input type="text" name="w_kind" style="width: 200px">
					</td>
				</tr>
				<tr>
					<td>수량:</td>
					<td><input type="number" id="w_amount" style="width: 200px">
					</td>
				</tr>
				<tr>
					<td>가격:</td>
					<td><input type="number" id="w_price" style="width: 200px">
					</td>
				</tr>
				<tr>
					<td>어울리는 음식:</td>
					<td>
						<div>
							<input type="text" name="w_food" >
						</div>
					</td>
				</tr>
				<tr>
					<td>와인소개:</td>
					<td>
						<div>
							<textarea cols="50" rows="10" style="width: 200px" 
								name="w_cont" placeholder="와인소개를 입력해주세요"></textarea>
						</div>
					</td>
				</tr>
				<tr>
					<td>와인사진:</td>
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
							<button type="submit">와인정보 수정</button>
						</div>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<input type="button" value="뒤로가기" onclick="location.href=''"
		style="margin: auto">



	<script>

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

