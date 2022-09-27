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
		<div class="col container-fluid" style="width: 960px;">
			<jsp:include page="../common/header.jsp"></jsp:include>
			<img src="../resources/img/sub_topimg.gif">
			
			<div class="row">
				<!-- 사이드 네비바 -->
				<div class="col-3">
					<jsp:include page="../common/localNav.jsp"></jsp:include>
				</div>
				
				<div class="col">
					<div class="row">
						<div class="col"><h2>FAQ 관리 페이지</h2></div>
					
					<div class="row">
						<div class="col" style="background: #f8f9fa">관리자 FAQ 작성 페이지입니다.</div>
					</div>
						
					<div class="row">
						<div class="col">
								<div class="row" id="contents">
									<div class="col">
											<form action="./writeFaqProcess" method="post" enctype="multipart/form-data">
												<div class="col d-grid">
													<input name="faq_ask_content" type="text" placeholder="제목을 입력해주세요."><br>
												</div>
												<div class="col d-grid"></div>
													<textarea name="faq_ask_comment" placeholder="답변을 입력해주세요."></textarea>
												<input type="submit" class="btn btn-primary" value="글쓰기">
											</form>
									</div>
									</div>
									<div class="row">
										<div class="col"></div>
										<div class="col"></div>
										<div class="col"></div>
									</div>
								
								
								
							</div>
					</div>	
						
						

						
						
					</div>
				</div>
				
				
			</div>
			
			
		</div>
		
		
		
		
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>