<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
		<title>Write FAQ Page</title>
	</head>
	<body>
		<jsp:include page="../common/header.jsp"></jsp:include>
		
		<div id="wrapper">
			<div class="row" id="title"><h2>FAQ 글쓰기</h2></div>
			<div class="row" id="contents">
				<div class="col"></div>
				<div class="col">
					<form action="./writeFaqProcess" method="post" enctype="multipart/form-data">
						제목 : <input name="faq_ask_content" type="text"><br>
						답변 :
						<textarea name="faq_ask_comment"></textarea>
						
						<input type="submit" value="글쓰기">
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
			</div>
		</div>
		
		
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>