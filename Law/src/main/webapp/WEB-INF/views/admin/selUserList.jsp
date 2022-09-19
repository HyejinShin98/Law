<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	 <%--  --%>
	 
	 
		<div class="col container-fluid" style="width : 850px;">
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
				      <th scope="col">법원이름</th>
				      <th scope="col">이메일</th>
				      <th scope="col">신청일</th>
				      <th scope="col">조력자분류</th>
				      <th scope="col">신청현황</th>
				    </tr>
				  </thead>
				  <tbody>
				  <c:forEach items="${list}" var="data">
				    <tr>
			     	  <td> ${data.APLCN_DTLS_PROPER_NUM }</td>
				      <td><a href="../admin/selUserListDetail?aplcn_dtls_proper_num=${data.APLCN_DTLS_PROPER_NUM }">${data.USER_NAME}</a></td>
				      <td>${data.COURT_NAME}</td>
				      <td>${data.USER_EMAIL}</td>
				      <td><fmt:formatDate value="${data.APLCN_DTLS_DATE }" pattern="yy.MM.dd"/></td>				      
				      <td>${data.TRIAL_FCLTT_SBCLS_CODE }</td>
				      <td>${data.APLCN_DTLS_STS }</td>
				    </tr>
				    </c:forEach>
				  </tbody>
				</table>
		</form>
		</div>
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	</div>
		<br>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>