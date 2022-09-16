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
						<h3>등재공고 수정페이지</h3>
					</div>
					<div class="col"></div>
				</div>

				<div class="row mt-3">
					<div class="col-1"></div>
					<div class="col bg-light text-dark">
						<a>등재공고 수정페이지입니다.</a>
					</div>
					<div class="col-4"></div>
				</div>

				<form action="./trialAssistantRegisterUpdateProcess?announce_proper_num=${trialAssistantData.tb_002.announce_proper_num }" method="post">
					<div class="row mt-3">
						<div class="col-1"></div>
						<div class="col-2">
							 <label>재판조력자 분류</label>
								  <select name="trial_fcltt_proper_num">
								    <c:forEach items="${trialFcltt}" var="trialFcltt">
							  			<option value="${trialFcltt.trial_fcltt_proper_num}" >
							  			${trialFcltt.trial_fcltt_description }</option>
							  		</c:forEach>
								  </select>
							</div>
							<div class="col"></div>
						</div>
				
					<div class="row mt-3">
						<div class="col-1"></div>
						<div class="col d-grid">
							<input type="text" name="announce_title" value="${trialAssistantData.tb_002.announce_title }" placeholder="최소 10글자이상 입력 바랍니다.">
						</div>
						<div class="col-5"></div>
					</div>

					<div class="row mt-3">
						<div class="col-1"></div>
						<div class="col d-grid">
							<textarea name="announce_content" placeholder="최소 10글자이상 입력 바랍니다.">${trialAssistantData.tb_002.announce_content }</textarea>
						</div>
						<div class="col-4"></div>
					</div>
					
					<div class="row mt-3">
						<div class="col-1"></div>
						<div class="col">
							<label>공고시작일자</label>
							<input name="announce_start_date" type="date" value="<fmt:formatDate value="${trialAssistantData.tb_002.announce_start_date}" pattern="yyyy-MM-dd"/>">
						</div>
						<div class="col">
							<label>공고종료일자</label>
							<input name="announce_end_date" type="date" value="<fmt:formatDate value="${trialAssistantData.tb_002.announce_end_date}" pattern="yyyy-MM-dd"/>">
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