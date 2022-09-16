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
<title>공지사항 게시글 내용</title>
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
					<div class="col"><h3>공지사항 게시글 내용</h3></div>
					<div class="col"></div>
				</div>
				
				<!-- 서치박스 -->
				<div class="row mt-3">
					<div class="col-1"></div>
					<div class="col bg-light text-dark" style="">공지사항 게시글 내용</div>
					<div class="col-4"></div>
				</div>
				<!-- 서치박스 끝 -->
				<!--게시글부분-->
				<div class="row mt-3">
					<div class="col-1"></div>
					<div class="col-5 bg-primary p-2 text-dark bg-opacity-10">제목: ${noticeData.tb_003.notice_title }</div>
					<div class="col-1 bg-primary p-2 text-dark bg-opacity-10">${noticeData.noticeAdmin.admin_auth }</div>
					<div class="col-1 bg-primary p-2 text-dark bg-opacity-10"><fmt:formatDate value="${noticeData.tb_003.notice_date }" pattern="yyyy-MM-dd"/></div>
					<div class="col-4"> </div>
				</div>
				<div class="row mt-3">
					
				</div>
				<div class="row mt-3">
					<div class="col-1"></div>
					<div class="col d-grid">${noticeData.tb_003.notice_content }</div>
					<div class="col-4"> </div>
				</div>
				
					
				<!-- 게시믈 부분 끝 -->
				<c:if test="${!empty admin && sessionAdmin.admin_proper_num == notice.tb_003.admin_proper_num}">
				<div class="row mt-3">
					<div class="col-6"></div>
					<div class="col-1 d-grid">
						<a class="btn btn-primary" href="./noticeUpdateBoard?notice_proper_num=${noticeData.tb_003.notice_proper_num }">수정</a>
					</div>
					<div class="col-1 d-grid">
						<a class="btn btn-primary" href="./noticeDeleteProcess?notice_proper_num=${noticeData.tb_003.notice_proper_num }">삭제</a>
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