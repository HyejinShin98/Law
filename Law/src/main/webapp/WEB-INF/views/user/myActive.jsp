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
					<span class="fw-bold fs-4 text-secondary">나의 활동내역</span>
				</div>	
			</div>
			
			<div class="row">
				<div class="col">
					<table class="table text-center">
						<colgroup>
							<col width="10%">
							<col width="30%">
							<col width="20%">
							<col width="20%">
							<col width="20%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">활동법원</th>
								<th scope="col">선정일</th>
								<th scope="col">출석일자</th>
								<th scope="col">재판완료여부</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${activeList }" var="list">
								<tr>
									<td>${list.ROWNUM }</td>								
									<td>${list.COURT_NAME }</td>								
									<td><fmt:formatDate value="${list.CHOSEN_DATE }" pattern="yyyy-MM-dd"/></td>								
									<td><fmt:formatDate value="${list.ATTENDANCE_DATE }" pattern="yyyy-MM-dd"/></td>								
									<td>
										<c:if test="${list.ACT_COMPLETE_YN == 'y'}">
											완료
										</c:if>
										<c:if test="${list.ACT_COMPLETE_YN == 'n'}">
											미완료
										</c:if>
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