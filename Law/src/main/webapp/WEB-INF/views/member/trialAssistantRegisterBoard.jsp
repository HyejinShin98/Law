<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<title>공지사항</title>
</head>
<body>
	<div class="container-fluid" style="width: 960px;">
		<jsp:include page="../common/header.jsp"></jsp:include>
		
		<!-- 구분 이미지 -->
		<img src="../resources/img/sub_topimg.gif">
		
		<!-- 페이지 내용 -->
		<div class="row">
			<!-- 사이드 네비바 -->
			<div class="col-3">
				<jsp:include page="../common/localNav.jsp"></jsp:include>
			</div>
			<!-- 본문 -->
			<div class="col">
				<div class="row">
					<div class="col">
						<div class="row">
							<div class="col-1"></div>
							<div class="col"><h3>재판조력자 등재공고 페이지</h3></div>
						</div>
						
						<!-- 서치박스 -->
						<div class="row mt-3">
							<div class="col bg-light text-dark">서치박스</div>
							<div class="col-4"></div>
						</div>
						
						<!--게시글부분-->
						<div class="row mt-3">
							<div class="col-4 bg-primary p-2 text-dark bg-opacity-10 text-center">제목</div>
							<div class="col-3 bg-primary p-2 text-dark bg-opacity-10 text-center">모집기간</div>
							<div class="col-1 bg-primary p-2 text-dark bg-opacity-10 text-center">진행여부</div>
							<div class="col-1"></div>
						</div>
						<div class="row mt-1">
							<c:forEach items="${trialAssistantDataList}" var="trialAssistantDataList" >
								<div class="col-4 mt-1 text-center" style="border-bottom: 1px solid #bcbcbc;"><a style="text-decoration: none" href="./trialAssistantRegisterReadBoard?announce_proper_num=${trialAssistantDataList.tb_002.announce_proper_num}">${trialAssistantDataList.tb_002.announce_title }</a></div>
								<div class="col-3 mt-1 text-center" style="border-bottom: 1px solid #bcbcbc;"><fmt:formatDate value="${trialAssistantDataList.tb_002.announce_start_date}" pattern="yyyy-MM-dd"/>
								~<fmt:formatDate value="${trialAssistantDataList.tb_002.announce_end_date}" pattern="yyyy-MM-dd"/>
								</div>
								<div class="col-1 mt-1 text-center" style="border-bottom: 1px solid #bcbcbc;">
									<c:set var="now" value="<%=new java.util.Date()%>" />
									<c:set var="nowDate"><fmt:formatDate value="${now}" pattern="yyMMdd" /></c:set>
									<c:set var="endDate"><fmt:formatDate value="${trialAssistantDataList.tb_002.announce_end_date}" pattern="yyMMdd" /></c:set>
									<c:choose>
										<c:when test="${endDate >= nowDate}">
											진행
										</c:when>
										<c:otherwise>
											기간만료							
										</c:otherwise>
									</c:choose>
								</div>
								<div class="col-1"></div>
							</c:forEach>
						</div>	
						<!-- 게시믈 부분 끝 -->
						<c:if test="${!empty admin}">
						<div class="row mt-3">
							<div class="col-7"></div>
							<div class="col">
								<a class="btn btn-primary" href="./trialAssistantRegisterWriteBoard">글쓰기</a>
							</div>
						</div>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>