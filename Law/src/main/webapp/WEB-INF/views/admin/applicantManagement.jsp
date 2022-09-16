<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<title> 신청자 조회 </title>

</head>
<body>
<div class="col container-fluid" style="width : 1600px;">
	<div class="row">
		<jsp:include page="../common/header.jsp"></jsp:include>
		<div class="col-2">
			<jsp:include page="../common/assistantAdminNav.jsp"></jsp:include>
		</div>
		<div class="col">
		<form action="excel" method="post">
			<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">번호</th>
				      <th scope="col">이름</th>
				      <th scope="col">연락처</th>
				      <th scope="col">이메일</th>
				      <th scope="col">신청일</th>
				      <th scope="col">신청공고</th>
				      <th scope="col">신청현황</th>
				    </tr>
				  </thead>
				  <tbody>
				  <c:forEach items="${applicantManagementList}" var="applicantManagementList">
				    <tr>
				      <th scope="row">${applicantManagementList.APLCN_DTLS_PROPER_NUM}</th>
				      <td><a href="applicantManagementDetail?aplcn_dtls_proper_num=${applicantManagementList.APLCN_DTLS_PROPER_NUM}">${applicantManagementList.USER_NAME }</a></td>
				      <td>${applicantManagementList.USER_PHONE}</td>
				      <td>${applicantManagementList.USER_EMAIL}</td>
				      <td><fmt:formatDate value="${applicantManagementList.APLCN_DTLS_DATE }" pattern="yy.MM.dd"/></td>				      
				      <td>${applicantManagementList.ANNOUNCE_TITLE}</td>
				      <td>${applicantManagementList.APLCN_DTLS_STS}</td>
				    </tr>
				    </c:forEach>
				  </tbody>
				</table>
		<button type="submit" type="button" class="btn btn-primary">다운로드</button>		
		</form>
		<jsp:include page="../common/footer.jsp"></jsp:include>
		</div>
	</div>
	</div>
	
	

	
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>