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
<title>등재공고 상세페이지</title>
</head>
<body>
	<div class="col container-fluid" style="width: 1600px;">
		<div class="row">
			<jsp:include page="../common/header.jsp"></jsp:include>
			<div class="col-2">
				<jsp:include page="../common/localNav.jsp"></jsp:include>
			</div>
			<div class="col">
				<div class="row">
					<div class="col-1"></div>
					<div class="col"><h3>등재공고 상세페이지</h3></div>
					<div class="col"></div>
				</div>
				
				<!-- 서치박스 -->
				<div class="row mt-3">
					<div class="col-1"></div>
					<div class="col bg-light text-dark" style="">등재공고 상세페이지</div>
					<div class="col-4"></div>
				</div>
				<!-- 서치박스 끝 -->
				<!--게시글부분-->
				<div class="row mt-3 ">
					<div class="col-1"></div>
					<div class="col-3 bg-primary p-2 text-dark bg-opacity-10">제목] ${trialAssistantData.tb_002.announce_title }</div>
					<div class="col-1 bg-primary p-2 text-dark bg-opacity-10" style="text-align: center;">작성자] ${trialAssistantData.noticeAdmin.admin_auth }</div>
					<div class="col-3 bg-primary p-2 text-dark bg-opacity-10" style="text-align: right;">모집기간] 
					<fmt:formatDate value="${trialAssistantData.tb_002.announce_start_date }" pattern="yyyy-MM-dd"/>~
					<fmt:formatDate value="${trialAssistantData.tb_002.announce_end_date }" pattern="yyyy-MM-dd"/>
					</div>
					<div class="col"></div>
				</div>
				<div class="row mt-3 ">
					<div class="col-1"></div>
					<div class="col-3 bg-primary p-2 text-dark bg-opacity-10" style="text-align: left;">최근수정일자 
					<fmt:formatDate value="${trialAssistantData.tb_002.announce_last_date }" pattern="yyyy-MM-dd"/>
					</div>
					<div class="col-4 bg-primary p-2 text-dark bg-opacity-10"></div>
				</div>
				
				
				
				
				
				<div class="row mt-3">
					<div class="col-1"></div>
					<div class="col bg-primary p-2 text-dark bg-opacity-10 d-grid">
						<label>모집대상</label>
						 <c:forEach items="${trialFcltt}" var="trialFcltt" varStatus="status">
						 	<c:if test="${status.index%5==0}">
						 		<br>
						 	</c:if>
						 	[${trialFcltt.trial_fcltt_description}]
						 </c:forEach>
					</div>
					<div class="col-4"> </div>
				</div>
				<div class="row mt-3">
					<div class="col-1"></div>
					<div class="col d-grid bg-primary p-2 text-dark bg-opacity-10">
					<label>내용</label><br>
					${trialAssistantData.tb_002.announce_title }</div>
					<div class="col-4"> </div>
				</div>
				<div class="row">
					<div class="col d-grid  p-2 text-dark ">
						<div class="col-4" style="justify-self: center;"> 
							<a href="../user/announcementProcess?announce_proper_num=${trialAssistantData.tb_002.announce_proper_num }" class="text-decoration-none border bg-light text-black">등재신청</a>
						</div>
					</div>
				<!-- 게시믈 부분 끝 -->
				
				<c:if test="${!empty admin && sessionAdmin.admin_proper_num == trialAssistantData.tb_002.admin_proper_num}">
				<div class="row mt-3">
					<div class="col-6"></div>
					<div class="col-1 d-grid">
						<a class="btn btn-primary" href="./trialAssistantRegisterUpdateBoard?announce_proper_num=${trialAssistantData.tb_002.announce_proper_num }">수정</a>
					</div>
					<div class="col-1 d-grid">
						<a class="btn btn-primary" href="./trialAssistantRegisterDeleteProcess?announce_proper_num=${trialAssistantData.tb_002.announce_proper_num }">삭제</a>
					</div>					
				</div>
				</c:if>
				
		<jsp:include page="../common/footer.jsp"></jsp:include>
		</div>
	</div>
	</div>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>