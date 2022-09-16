<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>공지사항작성페이지</title>
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
					<div class="col">
						<h3>공지사항 수정</h3>
					</div>
					<div class="col"></div>
				</div>

				<div class="row mt-3">
					<div class="col-1"></div>
					<div class="col bg-light text-dark" style="">
						<a>관리자 공지사항 수정페이지입니다.</a>
					</div>
					<div class="col-4"></div>
				</div>

				<form action="./updateNoticeProcess?notice_proper_num=${noticeData.tb_003.notice_proper_num }" method="post">
					<div class="row mt-3">
						<div class="col-1"></div>
						<div class="col d-grid">
							<input type="text" name="notice_title" placeholder="${noticeData.tb_003.notice_title }">
						</div>
						<div class="col-5"></div>
					</div>

					<div class="row mt-3">
						<div class="col-1"></div>
						<div class="col d-grid">
							<textarea name="notice_content" placeholder="${noticeData.tb_003.notice_content}"></textarea>
						</div>
						<div class="col-4"></div>
					</div>
					<div class="row mt-3">
						<div class="col-7"></div>
						<div class="col">
							<input type="submit" class="btn btn-primary" value="제출하기">
						</div>
						<div class="col"></div>
					</div>
				</form>
			</div>
		</div>
	</div>






	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>