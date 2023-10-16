<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
  
  
<!-- 위 nav (비로그인)-->
<c:choose> 
  <c:when test="${ loginVo eq null and sloginVo eq null }">
   <ul class="nav justify-content-end">
     <li class="nav-item">
       <a class="nav-link active" aria-current="page" href="/UserLoginForm"><b>고객로그인</b></a>
     </li> 
     <li class="nav-item">
       <a class="nav-link" href="/StoreLoginForm"><b>가게로그인</b></a>
     </li> 
   </ul>
  </c:when>
  <c:when test="${ loginVo ne null and sloginVo eq null }">
    <ul class="nav justify-content-end">
     <li class="nav-item">
        <br>
       <b> ${ loginVo.u_name } 님 환영합니다 </b>
     </li>
     <li class="nav-item">
       <img src="/img/logon.png" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/UserTasting?u_no=${loginVo.u_no}"><b>신청한 시음회</b></a></li>
            <li><a class="dropdown-item" href="/UserFavoriteStores"><b>관심 매장</b></a></li>
            <li><a class="dropdown-item" href="/UserInfo?u_no=${loginVo.u_no}"><b>내정보 확인/수정</b></a></li>
            <li><a class="dropdown-item" href="/CartList?u_no=${loginVo.u_no }"><b>장바구니</b></a></li>
            <li><a class="dropdown-item" href="/UserPurchaseHistory"><b>구매 기록</b></a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/UserLogOut"><b>로그 아웃</b></a></li>
          </ul>     
     </li>
   </ul>
  </c:when>
  <c:when test="${ loginVo eq null and sloginVo ne null }">
    <ul class="nav justify-content-end">
     <li class="nav-item">
        <br>
        <b> ${ sloginVo.s_name } 님 환영합니다 </b>
     </li>
     <li class="nav-item">
       <img src="/img/logon.png" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          <ul class="dropdown-menu">
             <li><a class="dropdown-item" href="/StoreCheck?s_no=${sloginVo.s_no }"><b>매장정보</b></a></li>
           <li><a class="dropdown-item" href="/StoreWineRegisterForm?s_no=${ sloginVo.s_no }"><b>매장와인 등록</b></a></li>
             <li><a class="dropdown-item" href="/StoreWineManage?s_no=${ sloginVo.s_no }"><b>보유와인 확인/수정</b></a></li>
            <li><a class="dropdown-item" href="/Store/SalesHistory"><b>판매기록</b></a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/StoreLogOut"><b>로그 아웃</b></a></li>
          </ul>     
     </li>
   </ul>
   </c:when>
</c:choose>
<!-- 위 nav -->

<!-- 홈으로 가는 버튼 (화면 제일 좌측) -->
<ul class="nav justify-content-left">
  <li class="nav-item">
     <a class="nav-link" href="/"><h2>와인이야기</h2></a>
  </li>
</ul>
<!-- 홈으로 가는 버튼 (화면 제일 좌측) -->

<!-- 아래nav -->
<ul class="nav justify-content-center" >
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/StoreList"><b>매장찾기</b></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/WineList"><b>전체와인</b></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/Event"><b>이벤트 및 프로모션</b></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/TastingList"><b>시음회 정보</b></a>
  </li>
</ul> 

