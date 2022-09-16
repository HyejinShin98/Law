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
					<span class="fw-bold fs-4 text-secondary">나의 등재신청 내역</span>
				</div>	
				
			</div>
			
			<div class="row">
				<div class="col">
					<table class="table text-center">
						<colgroup>
							<col width="10%">
							<col width="20%">
							<col width="20%">
							<col width="15%">
							<col width="20%">
							<col width="15%">
						</colgroup>
					  <thead>
					    <tr>
					      <th scope="col">번호</th>
					      <th scope="col">신청분류</th>
					      <th scope="col">신청법원</th>
					      <th scope="col">상태</th>
					      <th scope="col">신청일자</th>
					      <th scope="col"></th>
					    </tr>
					  </thead>
					  <tbody>
					  	<c:forEach items="${list }" var="item">
					  		<tr>
					  			<td>${item.rownum}</td>
					  			<td>${item.trial_fcltt_description}</td>
					  			<td>${item.court_name}</td>
					  			<td>${item.aplcn_dtls_sts}</td>
					  			<td><fmt:formatDate value="${item.aplcn_dtls_date}" pattern="yyyy-MM-dd"/></td>
					  			<td>
					  				<c:choose>
					  					<c:when test="${item.aplcn_dtls_sts eq '작성중' or item.aplcn_dtls_sts eq '서류보완필요'}">
					  						<button type="button" class="btn btn-warning btn-sm text-white" onclick="location.href='./myApplicationWrite'">작성</button>
					  					</c:when>
					  					<c:otherwise>
					  						<button type="button" class="btn btn-primary btn-sm" onclick="location.href='./myApplicationDetail?aplcn_num=${item.aplcn_dtls_proper_num}';">보기</button>
					  					</c:otherwise>
					  				</c:choose>
					  			</td>
					  		</tr>	
					  	</c:forEach>
					  </tbody>
					</table>
				</div>
				
			</div>
		
		</div>
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>