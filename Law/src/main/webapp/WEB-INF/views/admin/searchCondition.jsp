<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
	
<!-- 외부 css 로드  -->
<link rel="stylesheet" type="text/css" href="../resources/css/common.css">
<title>조건별 조회</title>
<style>
	
</style>
<script>

function selectCategory(e){
	console.log(e);
	console.log(e.value);
	
	var xhr = new XMLHttpRequest(); //AJAX 객체 생성
	xhr.onreadystatechange = function () {
		if(xhr.readyState == 4 && xhr.status == 200){
			var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)
			
		}
	};
	
	xhr.open("get" , "../testapi/test5"); //리퀘스트 세팅..
	//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
	xhr.send(); //AJAX로 리퀘스트함..
	
}
</script>
</head>
<body>
<div class="container-fluid" style="width: 960px;">
	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<!-- 구분 이미지 -->
	<img src="../resources/img/sub_topimg.gif">
	
	<!-- 페이지 내용 -->
	<div class="row mt-2">
		<!-- 사이드 네비바 -->
		<div class="col-3 text-center" style="border-right: solid 1px #ccc;">
			<jsp:include page="../common/assistantAdminNav.jsp"></jsp:include>
		</div>
		
		<!-- 본문 -->
		<div class="col m-3">
			<!-- 현재위치 -->
			<div class="row text-end loc">
				<div class="col" style="font-size: 11px;">
					<span> 홈 > 재판조력자관리 > </span><span style="color: #72a8fe;font-weight: bold;">조건별 조회</span>
				</div>
			</div>
			<!-- 타이틀 -->
			<div class="row my-4">
				<div class="col">
					<img src="../resources/img/Admin/head_title_img.gif">
					<span style="font-weight: bold;">조건별 조회</span>
				</div>
			</div>
			
			<!-- 안내 -->
			<div class="contentsinbox">
				<div class="row">
					<div class="col">
						<select onchange="selectCategory(this)">
							<option>조건을 선택해주세요</option>
							<option value="a">조력자별 조회</option>
							<option value="b">기간별 조회</option>
							<option value="c">공고별 조회</option>
						</select>
			
						<select id="good">
							<option>조건을 선택해주세요</option>
						</select>
					
				
						<table class="table">
							  <thead>
							    <tr>
							      <th scope="col">번호</th>
							      <th scope="col">이름</th>
							      <th scope="col">신청일</th>
							      <th scope="col">신청현황</th>
							    </tr>
							  </thead>
							  <tbody>
							  <c:forEach items="${applicantManagementList }" var="data">
							    <tr>
							      <th scope="row">${data.aplcn_dtls_proper_num}</th>
							      <td>${data.user_name }</td>
							      <td><fmt:formatDate value="${data.aplcn_dtls_date }" pattern="yy.MM.dd"/></td>				      
							      <td>${data.aplcn_dtls_sts}</td>
							    </tr>
							    </c:forEach>
							  </tbody>
							</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>