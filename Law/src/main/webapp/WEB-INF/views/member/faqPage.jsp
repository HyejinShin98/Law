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
<title>FAQ</title>

</style>

</head>
<body>
	<div class="col container-fluid" style="width: 960px;">
		<jsp:include page="../common/header.jsp"></jsp:include>
		
		<img src="../resources/img/sub_topimg.gif">

		<div class="row">
			<!-- 사이드 네비바 -->
			<jsp:include page="../common/localNav.jsp"></jsp:include>
			
			<!-- FAQ 게시판 내용 -->
			<div class="col">
				<div class="row">
					<div class="col">
						<div class="row">
							<div class="col">
								
							</div>
						</div>
						<!-- FAQ 제목 -->
						<div class="row mt-5">
							<div class="col"></div>
							<div class="col-10">
								<img src="../resources/img/Faq/h3_ogi430.gif">
							</div>
							<div class="col"></div>
						</div>
						
						<!-- FAQ 리스트 -->
						<div class="row mt-3">
							<div class="col"></div>
							<div class="col-10">
							<table>
								
								<c:forEach items="${dataList }" var="data">
															
									<div class="accordion-item">
										<h2 class="accordion-header" id="flush-heading${data.faq_proper_num }">
											<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse${data.faq_proper_num }" aria-expanded="false" aria-controls="flush-collapse${data.faq_proper_num }">
								        		<b>Q&#46;</b>&nbsp;
								        		${data.faq_ask_content }
								      		</button>
								    	</h2>
								    	<div id="flush-collapse${data.faq_proper_num }" class="accordion-collapse collapse" aria-labelledby="flush-heading${data.faq_proper_num }" data-bs-parent="#accordionFlushExample">
											<div class="accordion-body" style="background:#f8f9fa">
												<b>A&#46;</b>&nbsp;
												${data.faq_ask_comment }
											</div>
											
											<div class="row">
												<div class="col"></div>
												<div class="col-8"></div>
												<div class="col">
													<!-- 수정, 삭제 버튼 -->
													<c:if test="${!empty admin}">
														<a href="./updateFaqPage?faq_proper_num=${data.faq_proper_num }">수정</a>
														<a href="./deleteFaqProcess?faq_proper_num=${data.faq_proper_num }">삭제</a>
													</c:if>
												</div>
											</div>
											
								  		</div>
									</div>
									
								</c:forEach>
							
							</table>
							</div>
							<div class="col"></div>
					</div>
					
					<!-- 글쓰기 버튼 -->
					<div class="row mt-3">
						<div class="col"></div>
						<div class="col"></div>
						<div class="col">
						<c:if test="${!empty admin}">
							<a href="./writeFaqPage"><button class="btn btn-primary">글쓰기</button></a>
						</c:if>							
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