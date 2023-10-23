<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<style>

</style>
  <div class="top-header-area" id="sticker">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-sm-12 text-center">
                    <div class="main-menu-wrap">
<ul class="nav" style="justify-content: space-between; align-items: center; display: flex;">
    <li class="nav-item">
        <div class="site-logo"><a href="/"><img src="/imgpage/winestory.png" alt="로고"></a></div>
    </li>
    <li class="nav-item">
        <ul class="navbar" style="justify-content: space-between; list-style-type: none; display: flex;">
            <li>
                <a style="color: #98fb98;" class="nav-link" aria-current="page" href="/StoreList"><b>매장찾기</b></a>
            </li>
            <li>
                <a style="color: #f08080;" class="nav-link" href="/WineList"><b>전체와인</b></a>
            </li>
            <li>
                <a style="color: #87cefa;" class="nav-link" href="/EventList"><b>이벤트 및 프로모션</b></a>
            </li>
            <li> 
                <a style="color: #e6e6fa;" class="nav-link" href="/TastingList"><b>시음회 정보</b></a>
            </li>
            <c:choose>
            <c:when test="${loginVo ne null and sloginVo eq null}">
            <li> 
                <a style="color: #e6e6fa;" class="nav-link" href="/UserCs?u_no=${loginVo.u_no }"><b>고객 문의</b></a>
            </li>
             </c:when>
             <c:when test="${loginVo eq null and sloginVo ne null and sloginVo.s_no ne 99}">
            <li> 
                <a style="color: #e6e6fa;" class="nav-link" href="/StoreCs?s_no=${sloginVo.s_no }"><b>고객센터</b></a>
            </li>
             </c:when>
             
            <c:when test="${loginVo.u_no eq null and sloginVo.s_no eq 99}">
            <li> 
                <a style="color: #e6e6fa;" class="nav-link" href="/CsAllUser"><b>고객센터</b></a>
            </li>
             </c:when> 
            </c:choose>
        </ul>
    </li>
                        <c:choose>
<c:when test="${loginVo eq null and sloginVo eq null}">
    <!-- 비로그인 상태 -->
    <li class="nav-item">
        <a style="background-color: #e6e6fa; color: #4b0082 !important;" class="boxed-btn" aria-current="page" href="/UserLoginForm"><b>고객로그인</b></a>
        <a style="background-color: #4b0082; color: #e6e6fa !important; margin-left: 10px;" class="bordered-btn" href="/StoreLoginForm"><b>가게로그인</b></a>
    </li>
</c:when>
                            <c:when test="${loginVo ne null and sloginVo eq null}">
                                <!-- 고객 로그인 상태 -->
                                <ul class="nav justify-content-end">
                                    <li class="nav-item">
                                        <br>
                                        <b> ${loginVo.u_name } 님 환영합니다 </b>
                                    </li>
                                    <li class="nav-item">
                                        <img src="/imgpage/logon.png" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="/UserTasting?u_no=${loginVo.u_no}"><b>신청한 시음회</b></a></li>
                                            <li><a class="dropdown-item" href="/UserFavoriteStores?u_no=${loginVo.u_no }"><b>관심 매장</b></a></li>
                                            <li><a class="dropdown-item" href="/UserInfo?u_no=${loginVo.u_no}"><b>내정보 확인/수정</b></a></li>
                                            <li><a class="dropdown-item" href="/CartList?u_no=${loginVo.u_no }"><b>장바구니</b></a></li>
                                            <li><a class="dropdown-item" href="/UserPurchaseHistory?u_no=${loginVo.u_no }"><b>구매 기록</b></a></li>
                                            <li><hr class="dropdown-divider"></li>
                                            <li><a class="dropdown-item" href="/UserLogOut"><b>로그 아웃</b></a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </c:when>
                            <c:when test="${loginVo eq null and sloginVo ne null and sloginVo.s_no ne 99}">
                                <!-- 가게 로그인 상태 -->
                                <ul class="nav justify-content-end">
                                    <li class="nav-item">
                                        <br>
                                        <b> ${sloginVo.s_name } 님 환영합니다 </b>
                                    </li>
                                    <li class="nav-item">
                                        <img src="/imgpage/logon.png" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="/StoreCheck?s_no=${sloginVo.s_no }"><b>매장정보</b></a></li>
                                            <li><a class="dropdown-item" href="/StoreWineRegisterForm?s_no=${ sloginVo.s_no }"><b>매장와인 등록</b></a></li>
                                            <li><a class="dropdown-item" href="/StoreWineManage?s_no=${ sloginVo.s_no }"><b>보유와인 확인/수정</b></a></li>
                                            <li><a class="dropdown-item" href="/SalesHistory?s_no=${sloginVo.s_no }"><b>판매기록</b></a></li>
                                            <li><hr class="dropdown-divider"></li>
                                            <li><a class="dropdown-item" href="/StoreLogOut"><b>로그 아웃</b></a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </c:when>
                             <c:when test="${loginVo.u_no eq null and sloginVo.s_no eq 99}">
                                <!-- 가게 로그인 상태 -->
                                <ul class="nav justify-content-end">
                                    <li class="nav-item">
                                        <br>
                                        <b> ${sloginVo.s_name } 님 환영합니다 </b>
                                    </li>
                                    <li class="nav-item">
                                        <img src="/imgpage/logon.png" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="/AdminWineInsertForm"><b>와인등록</b></a></li>
                                            <li><a class="dropdown-item" href="/AdminWineList?s_no=99"><b>와인목록</b></a></li>
                                            <li><a class="dropdown-item" href="/AdminBoardList?s_no=99"><b>공지사항 목록</b></a></li>
                                            <li><a class="dropdown-item" href="/AdminEvent"><b>프로모션 목록</b></a></li>
                                            <li><a class="dropdown-item" href="/AdminTastingList?s_no=99"><b>시음회 목록</b></a></li>
                                            <li><a class="dropdown-item" href="/AdminUserList?s_no=99"><b>유저목록</b></a></li>
                                            <li><a class="dropdown-item" href="/AdminStoreList?s_no=99"><b>매장목록</b></a></li>
                                            <li><a class="dropdown-item" href="/CsAllUser"><b>고객센터관리</b></a></li>
                                            <li><hr class="dropdown-divider"></li>
                                            <li><a class="dropdown-item" href="/StoreLogOut"><b>로그 아웃</b></a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </c:when>
                        </c:choose>
</ul>
                        <!-- 위쪽 네비게이션 -->
                    </div>
                </div>
            </div>
        </div>
    </div>