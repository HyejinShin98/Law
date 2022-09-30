<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<title>FAQ 수정 페이지</title>
</head>
<body>
	<div class="col container-fluid" style="width: 960px;">
		<jsp:include page="../common/header.jsp"></jsp:include>
		
		<img src="../resources/img/sub_topimg.gif">
		
		<div class="row">
			<!-- 사이드 네비바 -->
			<jsp:include page="../common/localNav.jsp"></jsp:include>
				
				<div class="col">
					<div class="row">
						<div class="col"><h2>FAQ 수정 페이지</h2></div>
					</div>
					<!-- 제목 -->
					<div class="row">
						<div class="col">
							<form action="./updateFaqProcess" method="post">
								<input name="faq_ask_content" value="${data.faq_ask_content }">
								<!-- 답변내용 -->
								<div class="row">
									<div class="col">
										<textarea name="faq_ask_comment">${data.faq_ask_comment }</textarea>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<input type="submit" value="수정하기">
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>
		</div>
	</div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>