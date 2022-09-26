<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
  <title>	평점 관리표 </title>
<script type="text/javascript">
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
<div class="col container-fluid" style="width : 1600px;">
	<div class="row">
		<jsp:include page="../common/header.jsp"></jsp:include>
		<div class="col-2">
			<jsp:include page="../common/assistantAdminNav.jsp"></jsp:include>
		</div>
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
			
		
		
		<jsp:include page="../common/footer.jsp"></jsp:include>
		
		</div>
	</div>
	</div>
	
	

	
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>