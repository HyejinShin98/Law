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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<title>마이페이지</title>
<script src="../resources/js/common.js"></script>
<script type="text/javascript">
	var errMsg = '${errorMsg}';
	
	window.addEventListener("DOMContentLoaded", function() {
		// 실행 시 가장 먼저 에러메세지 유무 확인
		showErrMsg(errMsg);
		
	});
</script>
</head>
<body>
	<div class="col container-fluid" style="width : 1600px;">
	<div class="row">
		<jsp:include page="../common/header.jsp"></jsp:include>
		<div class="col">
			<jsp:include page="./myPageNav.jsp"></jsp:include>
		</div>
		<div class="col-9 mt-4 px-5 mx-5">
		
			<div class="row border-bottom border-2 border-secondary py-2">
				<div class="col">
					<span class="fw-bold fs-4 text-secondary">나의 등재신청 상세</span>
				</div>	
				
			</div>
			
			<div class="row mt-4 mx-5">
	            <div class="col">
	                <div class="row">STEP 1</div>
	                <div class="row ">기본정보</div>
	            </div>
	            <div class="col border-start">
	                <div class="row">STEP 2</div>
	                <div class="row ">학력정보</div>
	            </div>
	            <div class="col border-start">
	                <div class="row">STEP 3</div>
	                <div class="row ">경력정보</div>
	            </div>
	            <div class="col border-start">
	                <div class="row">STEP 4</div>
	                <div class="row ">자격증정보</div>
	            </div>
	            <div class="col border-start">
	                <div class="row">STEP 5</div>
	                <div class="row ">증빙서류첨부</div>
	            </div>
			</div>
		
		</div>
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>