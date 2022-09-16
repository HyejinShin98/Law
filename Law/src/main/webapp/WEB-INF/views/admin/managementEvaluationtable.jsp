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

</head>
<body>
<div class="col container-fluid" style="width : 1600px;">
	<div class="row">
		<jsp:include page="../common/header.jsp"></jsp:include>
		<div class="col-2">
			<jsp:include page="../common/assistantAdminNav.jsp"></jsp:include>
		</div>
		<div class="col">
			<div class="row">
		
		<table class="table table-bordered" style="text-align : center; width : 800px; height: 800px; font-size:15px;">
		  <thead>
		  	<tr>
		      <th colspan="3">신청인 이름 : ?</th>		     
		      <th colspan="3">주민등록 번호 : ?</th>		      		 
		    </tr>		  
		    <tr>
		      <th rowspan="2">평정항목</th>		     
		      <th rowspan="2">세부항목</th>
		      <th rowspan="2">배점</th>
		      <th colspan="3">내용</th>		  
		    </tr>
		    <tr>
		      <th scope="col">구분</th>
		      <th scope="col">기준</th>
		      <th scope="col">배점</th>		  
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <td rowspan="9" >기본평정</td>
		      <td rowspan="6">경력점수</td>
		      <td rowspan="6">통산경력 + 관내경력</td>  
		      <td rowspan="3">통산경력</td>
		      <td scope="col">10년이상</td>
		      <td scope="col">5</td>		     		      
		    </tr>
		    <tr>
		    	<td scope="col">5~10년</td>
		      	<td scope="col">4</td>
		    </tr>
		    <tr>
		    	<td scope="col">5년 미만</td>
		      	<td scope="col">3</td>
		    </tr>
		    <tr>
		    	<td rowspan="3">관내경력</td>
		    	<td scope="col">10년이상</td>
		      	<td scope="col">5</td>
		    </tr>
		    <tr>
		    	<td scope="col">5~10년</td>
		      	<td scope="col">4</td>
		    </tr>
		    <tr>
		    	<td scope="col">5년 미만</td>
		      	<td scope="col">3</td>
		    </tr>
		    <tr>
		    	<td rowspan="2">사무소 소재지</td>
		    	<td rowspan="2"></td>
		    	<td colspan="2">관내 사무소</td>
		    	<td scope="col">5</td>
		    </tr>
		    <tr>
		    	<td colspan="2">관외 사무소</td>
		    	<td scope="col">3</td>
		    </tr>
		    <tr>
		    	<td colspan="5">신청인 사무소 주소지 : ?</td>
		    </tr>
		   	<tr>
		   		<td rowspan="3">인성평가</td>
		   		<td rowspan="3"></td>
		   		<td rowspan="3"></td>
		   		<td colspan="2">우수</td>
		   		<td scope="col">5</td>
		   	</tr>
		   	<tr>
		   		<td colspan="2">평균</td>
		   		<td scope="col">4</td>
		   	</tr>
		   	<tr>
		   		<td colspan="2">미흡</td>
		   		<td scope="col">3</td>
		   	</tr>
		   	<tr>
		   		<td rowspan="2">면접</td>
		   		<td rowspan="2"></td>
		   		<td rowspan="2"></td>
		   		<td colspan="2">우수</td>
		   		<td scope="col">5</td>
		   	</tr>
		   	<tr>
		   		<td colspan="2">미흡</td>
		   		<td scope="col">3</td>
		   	</tr>
		   	<tr>
		   		<td rowspan="4">자격증 점수</td>
		   		<td rowspan="4"></td>
		   		<td rowspan="4"></td>
		   		<td colspan="2"></td>
		   		<td scope="col">2.5</td>
		   	</tr>
		   	<tr>
		   		<td colspan="2"></td>
		   		<td scope="col">2.5</td>
		   	</tr>
		   	<tr>
		   		<td colspan="2"></td>
		   		<td scope="col">2.5</td>
		   	</tr>
		   	<tr>
		   		<td colspan="2"></td>
		   		<td scope="col">2.5</td>
		   	</tr>
		   	<tr>
		   		<td colspan="2">합계</td>
		   		<td scope="col"></td>
		   		<td colspan="3"></td>
		   	</tr>
		   	<tr>
		   		<td colspan="2">감정인 평정표</td>
		   		<td scope="col"></td>
		   		<td colspan="3"></td>
		   	</tr>
		   	<tr>
		   		<td scope="col">조정평점</td>
		   		<td scope="col">심사위원 추천</td>
		   		<td scope="col"></td>
		   		<td colspan="3">최대 7점</td>
		   	</tr>
		   	<tr>
		   		<td colspan="2">최종점수(종합)</td>
		   		<td scope="col"></td>
		   		<td colspan="3">--점/총점</td>
		   	</tr>
		  </tbody>
		</table>			
		</div>
		<jsp:include page="../common/footer.jsp"></jsp:include>
		</div>
	</div>
	</div>
	
	

	
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>