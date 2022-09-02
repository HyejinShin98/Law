<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
</head>
<body>
 
        
        <nav class="navbar navbar-expand-lg bg-light pb-5">
            <div class="container-fluid">
              <a class="navbar-brand" href="../user/main"><img src="../resources/img/캡처4.PNG"></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     재판조력자로그인
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../user/exampleProcess">로그인</a></li>
                        <li><a class="dropdown-item" href="../user/logout">로그아웃</a></li>
                        <li><a class="dropdown-item" href="#">회원가입</a></li>
                        <li><a class="dropdown-item" href="#">아이디찾기</a></li>
                        <li><a class="dropdown-item" href="#">비밀번호찾기</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     관리자로그인
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../admin/exampleProcess">로그인</a></li>
                        <li><a class="dropdown-item" href="../admin/logout">로그아웃</a></li>
                        <li><a class="dropdown-item" href="#">회원가입</a></li>
                        <li><a class="dropdown-item" href="#">아이디찾기</a></li>
                        <li><a class="dropdown-item" href="#">비밀번호찾기</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     재판조력자 등재신청
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../user/applicationRegistration">공인인증서 등 로그인</a></li>
                        <li><a class="dropdown-item" href="#">개인 및 기관 선택</a></li>
                        <li><a class="dropdown-item" href="#">기본,학력,경력 등 입력</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     마이페이지
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../user/myPage">마이페이지 목록조회</a></li>
                    <li><a class="dropdown-item" href="#">나의 등재신청내역</a></li>
                    <li><a class="dropdown-item" href="#">나의 활동 내역</a></li>
                    <li><a class="dropdown-item" href="#">나의 정보 관리</a></li>
                    <li><a class="dropdown-item" href="#">중비,해제신청 관리</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     게시글관리
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../user/board">재판조력자 등재공고</a></li>
                        <li><a class="dropdown-item" href="#">재판조력자 제도안내</a></li>
                        <li><a class="dropdown-item" href="#">제판조력자 신청절차안내</a></li>
                        <li><a class="dropdown-item" href="#">공지사항</a></li>
                        <li><a class="dropdown-item" href="#">FAQ</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     현황조회(관리자)
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../admin/statusAdmin">등재신청자 조회</a></li>
                        <li><a class="dropdown-item" href="#">보완요청자 조회</a></li>
                        <li><a class="dropdown-item" href="#">승인/등록자 조회</a></li>
                        <li><a class="dropdown-item" href="#">명단 삭제자 조회</a></li>
                        <li><a class="dropdown-item" href="#">부적격자 조회</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     게시글관리(관리자)
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../admin/boardAdmin">공지사항</a></li>
                        <li><a class="dropdown-item" href="#">FAQ</a></li>
                        <li><a class="dropdown-item" href="#">신청절차</a></li>
                        <li><a class="dropdown-item" href="#">등재공고</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        재판조력자관리(관리자)
                    </a>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="../admin/assistantAdmin">평정 기준표 관리</a></li>
                      <li><a class="dropdown-item" href="#">조건별 조회</a></li>
                      <li><a class="dropdown-item" href="#">신청자 조회</a></li>
                      <li><a class="dropdown-item" href="#">신청자 심사</a></li>
                      <li><a class="dropdown-item" href="#">평정 기준표 심사</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
     
</body>
</html>
   