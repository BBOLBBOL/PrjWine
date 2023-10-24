<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.breadcrumb-section {
	padding: 50px 0;
	background-size: cover;
	background-position: center center;
	position: relative;
	z-index: 1;
	background-attachment: fixed;
	padding-top: 200px;
	background-color: #800020;
}

.breadcrumb-text h1 {
    font-size: 50px;
    font-weight: 900;
    color: #fff;
    margin: 0;
    margin-top: 20px;
    }
    
    .breadcrumb-text p{
    color: #F28123;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 7px;
    
    }
.breadcrumb-section:after {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	content: "";
	background-color: #800020;
	z-index: -1;
	opacity : 0.8;
}

.nav {
	background-color: #800020; /* 버건디 색 */
	justify-content: space-between;
	align-items: center;
	display: flex;
	padding: 2%; /* 네비게이션 바의 여백 조절 */
	position : fixed;
	width: 100%;
	height: 20%;
	z-index: 999; /* 원하는 숫자(낮은 숫자부터 높은 숫자로)를 설정합니다. */
	transition: height 0.3s;
	  
}

.site-logo {
	margin-right: 20px; /* 로고 오른쪽 여백 조절 */
	margin-left: 80px;
}

.site-logo img {
	max-width: 200px; /* 로고 이미지의 최대 너비를 늘립니다. */
}

.navbar {
	list-style-type: none;
	display: flex;
	margin: 0; /* ul의 양쪽 너비를 늘리기 위해 왼쪽 여백을 없앰 */
}

.navbar li {
	margin-right: 20px; /* 메뉴 간격 조절 */
}


/* 로그인/로그아웃 버튼 스타일 */
.boxed-btn {
	background-color: #e6e6fa;
	color: #4b0082 !important;
	margin-left: 10px;
	padding: 15px 30px; /* 여백과 글씨 크기 조절 */
	text-decoration: none;
}

.bordered-btn {
	background-color: #4b0082;
	color: #e6e6fa !important;
	margin-right: 60px;
	padding: 15px 30px; /* 여백과 글씨 크기 조절 */
	text-decoration: none;
}

/* 드롭다운 스타일 */
.dropdown-menu {
	background-color: #e6e6fa;
	color: #4b0082;
}

/* 드롭다운 아이템 간격과 여백 조절 */
.dropdown-item {
	padding: 10px;
	margin: 2px;
}

.nav {
	transition: all 0.3s; /* 크기 변경을 부드럽게 애니메이션화합니다. */
}

.site-logo img {
	max-width: 150px;
	transition: all 0.3s; /* 로고 크기 변경을 애니메이션화합니다. */
}
</style>
<ul class="nav" class="sticky-wrapper"
	style="justify-content: space-between; align-items: center; display: flex;">
	<li class="nav-item">
		<div class="site-logo">
			<a href="/"><img src="/imgpage/winestory.png" alt="로고"></a>
		</div>
	</li>
	<li class="nav-item">
		<ul class="navbar"
			style="justify-content: space-between; list-style-type: none; display: flex;">
			<li><a style="color: #98fb98;" class="nav-link"
				aria-current="page" href="/StoreList"><b>매장찾기</b></a></li>
			<li><a style="color: #f08080;" class="nav-link" href="/WineList"><b>전체와인</b></a>
			</li>
			<li><a style="color: #87cefa;" class="nav-link"
				href="/EventList"><b>이벤트 및 프로모션</b></a></li>
			<li><a style="color: #e6e6fa;" class="nav-link"
				href="/TastingList"><b>시음회 정보</b></a></li>
			<c:choose>
				<c:when test="${loginVo ne null and sloginVo eq null}">
					<li><a style="color: #e6e6fa;" class="nav-link"
						href="/UserCs?u_no=${loginVo.u_no }"><b>고객 문의</b></a></li>
				</c:when>
				<c:when
					test="${loginVo eq null and sloginVo ne null and sloginVo.s_no ne 99}">
					<li><a style="color: #e6e6fa;" class="nav-link"
						href="/StoreCs?s_no=${sloginVo.s_no }"><b>고객센터</b></a></li>
				</c:when>

				<c:when test="${loginVo.u_no eq null and sloginVo.s_no eq 99}">
					<li><a style="color: #e6e6fa;" class="nav-link"
						href="/CsAllUser"><b>고객센터</b></a></li>
				</c:when>
			</c:choose>
		</ul>
	</li>
	<c:choose>
		<c:when test="${loginVo eq null and sloginVo eq null}">
			<!-- 비로그인 상태 -->
			<li class="nav-item"><a
				style="background-color: #e6e6fa; color: #4b0082 !important; border-radius: 7px; font-family: Arial, sans-serif;"
				class="boxed-btn" aria-current="page" href="/UserLoginForm"><b>고객로그인</b></a>
				<a
				style="background-color: #4b0082; color: #e6e6fa !important border-radius: 7px; margin-left: 10px; font-family: Arial, sans-serif;"
				class="bordered-btn" href="/StoreLoginForm"><b>가게로그인</b></a></li>
		</c:when>
		<c:when test="${loginVo ne null and sloginVo eq null}">
			<!-- 고객 로그인 상태 -->
			<ul>
				<li class="nav-item"><br> <b> ${loginVo.u_name } 님
						환영합니다 </b></li>
				<li class="nav-item"><img src="/imgpage/logon.png"
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false">
					<ul class="dropdown-menu">
						<li><a class="dropdown-item"
							href="/UserTasting?u_no=${loginVo.u_no}"><b>신청한 시음회</b></a></li>
						<li><a class="dropdown-item"
							href="/UserFavoriteStores?u_no=${loginVo.u_no }"><b>관심 매장</b></a></li>
						<li><a class="dropdown-item"
							href="/UserInfo?u_no=${loginVo.u_no}"><b>내정보 확인/수정</b></a></li>
						<li><a class="dropdown-item"
							href="/CartList?u_no=${loginVo.u_no }"><b>장바구니</b></a></li>
						<li><a class="dropdown-item"
							href="/UserPurchaseHistory?u_no=${loginVo.u_no }"><b>구매
									기록</b></a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="/UserLogOut"><b>로그
									아웃</b></a></li>
					</ul></li>
			</ul>
		</c:when>
		<c:when
			test="${loginVo eq null and sloginVo ne null and sloginVo.s_no ne 99}">
			<!-- 가게 로그인 상태 -->
			<ul >
				<li class="nav-item"><br> <b> ${sloginVo.s_name } 님
						환영합니다 </b></li>
				<li class="nav-item"><img src="/imgpage/logon.png"
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false">
					<ul class="dropdown-menu">
						<li><a class="dropdown-item"
							href="/StoreCheck?s_no=${sloginVo.s_no }"><b>매장정보</b></a></li>
						<li><a class="dropdown-item"
							href="/StoreWineRegisterForm?s_no=${ sloginVo.s_no }"><b>매장와인
									등록</b></a></li>
						<li><a class="dropdown-item"
							href="/StoreWineManage?s_no=${ sloginVo.s_no }"><b>보유와인
									확인/수정</b></a></li>
						<li><a class="dropdown-item"
							href="/SalesHistory?s_no=${sloginVo.s_no }"><b>판매기록</b></a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="/StoreLogOut"><b>로그
									아웃</b></a></li>
					</ul></li>
			</ul>
		</c:when>
		<c:when test="${loginVo.u_no eq null and sloginVo.s_no eq 99}">
			<!-- 가게 로그인 상태 -->
			<ul >
				<li class="nav-item"><br> <b> ${sloginVo.s_name } 님
						환영합니다 </b></li>
				<li class="nav-item"><img src="/imgpage/logon.png"
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false">
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/AdminWineInsertForm"><b>와인등록</b></a></li>
						<li><a class="dropdown-item" href="/AdminWineList?s_no=99"><b>와인목록</b></a></li>
						<li><a class="dropdown-item" href="/AdminBoardList?s_no=99"><b>공지사항
									목록</b></a></li>
						<li><a class="dropdown-item" href="/AdminEvent"><b>프로모션
									목록</b></a></li>
						<li><a class="dropdown-item" href="/AdminTastingList?s_no=99"><b>시음회
									목록</b></a></li>
						<li><a class="dropdown-item" href="/AdminUserList?s_no=99"><b>유저목록</b></a></li>
						<li><a class="dropdown-item" href="/AdminStoreList?s_no=99"><b>매장목록</b></a></li>
						<li><a class="dropdown-item" href="/CsAllUser"><b>고객센터관리</b></a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="/StoreLogOut"><b>로그
									아웃</b></a></li>
					</ul></li>
			</ul>
		</c:when>
	</c:choose>
</ul>
  <script>
    // Your JavaScript code here
    const nav = document.querySelector('.nav');
    let isNavShrunk = false;

    window.addEventListener('scroll', () => {
        if (window.scrollY > 0 && !isNavShrunk) {
            nav.style.height = '17%';
            nav.style.backgroundColor = '#5A001A'; // 어두운 버건디 색상
            isNavShrunk = true;
        } else if (window.scrollY === 0 && isNavShrunk) {
            nav.style.height = '20%';
            nav.style.backgroundColor = '#800020'; // 기본 버건디 색상
            isNavShrunk = false;
        }
    });
</script>
<!-- 위쪽 네비게이션 -->