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
	 
	 function categoryChange(e) {
			var good_a = ["측량", "문서", "경매", "통역인", "번역인", "통번역인", "의사", "회계사"];
			var target = document.getElementById("good");

			if(e.value == "a") var d = good_a;
			else if(e.value == "b") var d = good_b;
			else if(e.value == "c") var d = good_c;

			target.options.length = 0;

			for (x in d) {
				var opt = document.createElement("option");
				opt.value = d[x];
				opt.innerHTML = d[x];
				target.appendChild(opt);
			}	
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
			<select onchange="categoryChange(this)">
				<option>조건을 선택해주세요</option>
				<option value="a">조력자별 조회</option>
				<option value="b">기간별 조회</option>
				<option value="c">공고별 조회</option>
			</select>

			<select id="good">
				<option>조건을 선택해주세요</option>
			</select>
		
		<c:if >
		
		</c:if>
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