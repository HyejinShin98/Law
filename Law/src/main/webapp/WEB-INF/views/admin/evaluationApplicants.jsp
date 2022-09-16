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
<title>1차 신청자 평가</title>
<script>

function calculationtest(){
	all_carrer_score = parseInt(score.all_carrer_score.value);
 	jrsdc_carrer_score = parseInt(score.jrsdc_carrer_score.value);
	office_score = parseInt(score.office_score.value);
 	personality_score = parseInt(score.personality_score.value);
	interview_score = parseInt(score.interview_score.value);
	certificate_score = parseInt(score.certificate_score.value);
	evaluate_score = parseInt(score.evaluate_score.value);
	judge_recom_score =  parseInt(score.judge_recom_score.value);			

 	score.total1.value = all_carrer_score+jrsdc_carrer_score+office_score+personality_score+interview_score + certificate_score;

 	score.total2.value = all_carrer_score+jrsdc_carrer_score+office_score+personality_score+interview_score + certificate_score+evaluate_score + judge_recom_score;
	
	

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
			<div class="row">
			<table class="table">
			  <tbody>
			  	<tr>
			  	<th scope="row">신청자 정보</th>
			  	<td></td>
			  	</tr>
			    <tr>
			      <th scope="row" class="table-active">이름</th>
			      <td>${userInfo.applicantInfo.USER_NAME}</td>
			      <td class="table-active">나이</td>
			      <td>${userInfo.applicantInfo.USER_AGE}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">이메일</th>
			      <td>${userInfo.applicantInfo.USER_EMAIL}</td>
			      <td class="table-active">번호</td>
			      <td>${userInfo.applicantInfo.USER_PHONE}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">직업</th>
			      <td>${userInfo.applicantInfo.USER_JOB}</td>
			      <td class="table-active">주소</td>
			      <td>${userInfo.applicantInfo.USER_AR}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">우편번호</th>
			      <td>${userInfo.applicantInfo.USER_AR_ZONECODE}</td>
			      <td class="table-active">지번주소</td>
			      <td>${userInfo.applicantInfo.USER_AR_JIBUN}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">상세주소</th>
			      <td>${userInfo.applicantInfo.USER_DETAIL}</td>
			      <td class="table-active">은행</td>
			      <td>${userInfo.applicantInfo.USER_BANK}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">계좌번호</th>
			      <td>${userInfo.applicantInfo.USER_BANK_ACCOUNT}</td>
			      <td class="table-active">예금주</td>
			      <td>${userInfo.applicantInfo.USER_BANK_HOLDER}</td>
			    </tr>
			    <tr>
			  	<th scope="row">신청자 신청 상세</th>
			  	</tr>
			    <tr>
			      <th scope="row" class="table-active">신청법원 번호</th>
			      <td>${userInfo.applicantInfo.COURT_PROPER_NUM}</td>
			      <td class="table-active">신청법원</td>
			      <td>${userInfo.applicantInfo.COURT_NAME}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">소송사건 당사자 경력 유무</th>
			      <td>${userInfo.applicantInfo.LIGTN_CASE_CARER_YN}</td>
			      <td class="table-active">소송사건 경력 내용</td>
			      <td>${userInfo.applicantInfo.LIGTN_CASE_CARER_ETC}</td>
			    </tr>	
			    <tr>
			      <th scope="row" class="table-active">보험업계 자문 경력 유무</th>
			      <td>${userInfo.applicantInfo.INSRN_INDST_CARER_YN}</td>
			      <td class="table-active">보험업계 자문 내용</td>
			      <td>${userInfo.applicantInfo.INSRN_INDST_CARER_ETC}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">형사처벌 받은 경력 유무</th>
			      <td>${userInfo.applicantInfo.CRIMINAL_PENALTY_CARER_YN}</td>
			      <td class="table-active">형사처벌 받은 경력 내용</td>
			      <td>${userInfo.applicantInfo.CRIMINAL_PENALTY_CARER_ETC}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">신청 상태</th>
			      <td>${userInfo.applicantInfo.APLCN_DTLS_STS}</td>
			      <td class="table-active">신청 날짜</td>
			      <td>${userInfo.applicantInfo.APLCN_DTLS_DATE}</td>
			    </tr>
			    <tr>
			  	<th scope="row">신청자 학력 상세</th>
			  	</tr>
			  	<tr>
			      <th scope="row" class="table-active">학교명</th>
			      <td>${userInfo.applicantInfo.EDSCTN_SCHOOL_NAME}</td>
			      <td class="table-active">학과 전공</td>
			      <td>${userInfo.applicantInfo.EDCTN_MAJOR}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">학위</th>
			      <td>${userInfo.applicantInfo.EDCTN_DEGREE}</td>
			      <td class="table-active">입학일</td>
			      <td>${userInfo.applicantInfo.EDCTN_ADMSN_DATE}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">졸업일</th>
			      <td>${userInfo.applicantInfo.EDCTN_GRDTN_DATE}</td>
			      <td class="table-active">최종학력 여부</td>
			      <td>${userInfo.applicantInfo.EDCTN_FINAL__YN}</td>
			    </tr>
			    <tr>
			  	<th scope="row">신청자 경력 상세</th>
			  	</tr>
			  	<tr>
			      <th scope="row" class="table-active">활동기관명</th>
			      <td>${userInfo.applicantInfo.COMPANY_NAME}</td>
			      <td class="table-active">경력 구분</td>
			      <td>${userInfo.applicantInfo.CARER_TYPE}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">근무 시작 일자</th>
			      <td>${userInfo.applicantInfo.WORK_START_DATE}</td>
			      <td class="table-active">근무 종료 일자</td>
			      <td>${userInfo.applicantInfo.WORK_END_DATE}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">수행 업무</th>
			      <td>${userInfo.applicantInfo.WORK_DESCRIPTION}</td>
			      <td class="table-active">부서</td>
			      <td>${userInfo.applicantInfo.WORK_DEPARTMENT}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">직책</th>
			      <td>${userInfo.applicantInfo.WORK_POSITION}</td>
			      <td class="table-active">활동 경력 설명</td>
			      <td>${userInfo.applicantInfo.CARER_DESCRIPTION}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">특기사항</th>
			      <td>${userInfo.applicantInfo.SPECIAL_NOTE_DESCRIPTION}</td>
			      <td class="table-active"></td>
			      <td></td>
			    </tr>
			    <tr>
			  	<th scope="row">신청자 자격증 상세</th>
			  	</tr>
			  	<c:forEach items="${certificateList}" var="certificateList">
			  	<tr>
			      <th scope="row" class="table-active">자격증 종목</th>
			      <td>${certificateList.CRTFC_TYPE}</td>
			      <td class="table-active">발급기관</td>
			      <td>${certificateList.ISSUE_AGENCY}</td>
			    </tr>
			    <tr>
			      <th scope="row" class="table-active">자격증/면허번호</th>
			      <td>${certificateList.CRTFC_NUMBER}</td>
			      <td class="table-active">발급일</td>
			      <td>${certificateList.ISSUE_DATE}</td>
			    </tr>
			    </c:forEach>
			    
			    
			  	
			  </tbody>
			</table>
				
	<form action="evaluationApplicantsProcess?aplcn_dtls_proper_num=${userInfo.applicantInfo.APLCN_DTLS_PROPER_NUM}" method="post" name="score">
	<table class="table table-bordered" style="text-align : center; width : 800px; height: 800px; font-size:15px;">
		  <thead>
		  	<tr>
		      <th colspan="3">${userInfo.applicantInfo.USER_NAME}</th>		     
		      <th colspan="3">${userInfo.applicantInfo.USER_PHONE}</th>		      		 
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
		      <td rowspan="3"><input type="text" name="all_carrer_score" onKeyUp=calculationtest(); min="0" max="5" /></td>  
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
		    	<td rowspan="3"><input type="text" name="jrsdc_carrer_score" onKeyUp=calculationtest(); min="0" max="5" /></td> 
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
		    	<td rowspan="2"><input type="text" name="office_score" onKeyUp=calculationtest(); min="0" max="5" /></td>
		    	<td colspan="2">관내 사무소</td>
		    	<td scope="col">5</td>
		    </tr>
		    <tr>
		    	<td colspan="2">관외 사무소</td>
		    	<td scope="col">3</td>
		    </tr>
		    <tr>
		    	<td colspan="5">신청인 사무소 주소지 : ${userInfo.applicantInfo.USER_AR_DETAIL}</td>
		    </tr>
		   	<tr>
		   		<td rowspan="3">인성평가</td>
		   		<td rowspan="3"></td>
		   		<td rowspan="3"><input type="text" name="personality_score" onKeyUp=calculationtest(); min="0" max="5" /></td>
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
		   		<td rowspan="2"><input type="text" name="interview_score" onKeyUp=calculationtest(); min="0" max="5" /></td>
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
		   		<td rowspan="4"><input type="text" name="certificate_score" onKeyUp=calculationtest(); min="0" max="10" /></td>
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
		   		<td scope="col"><input type='text' name='total1' size='7'  readonly> </td>
		   		<td colspan="3"></td>
		   	</tr>
		   	<tr>
		   		<td colspan="2">감정인 평정표</td>
		   		<td scope="col"><input type="text" name="evaluate_score" onKeyUp=calculationtest(); min="0" max="10" /></td>
		   		<td colspan="3"></td>
		   	</tr>
		   	<tr>
		   		<td scope="col">조정평점</td>
		   		<td scope="col">심사위원 추천</td>
		   		<td scope="col"><input type="text" name="judge_recom_score" onKeyUp=calculationtest(); min="0" max="7" /></td>
		   		<td colspan="3">최대 7점</td>
		   	</tr>
		   	<tr>
		   		<td colspan="2">최종점수(종합)</td>
		   		<td scope="col"><input type='text' name='total2' size='7'  readonly></td>
		   		<td colspan="3">--점/총점</td>
		   	</tr>
		  </tbody>
		</table>
		
		검토의견 : <input type="text" name="review_etc">
		
	
		<button input type="submit" type="button" class="btn btn-primary">작성하기</button>
				
		
		
		</form>
		</div>
		<jsp:include page="../common/footer.jsp"></jsp:include>
		</div>
	</div>
	</div>
	
	

	
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>