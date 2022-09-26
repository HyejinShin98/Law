<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
/*  */
function getUserDetail(){

	document.getElementById("s1").value='${seven.company_name}'; 
	document.getElementById("s2").value='${seven.carer_type}'; 
	
	document.getElementById("s5").value='${seven.work_description}'; 
	document.getElementById("s6").value='${seven.work_department}'; 
	document.getElementById("s7").value='${seven.work_position}'; 
	document.getElementById("s8").value='${seven.carer_description}'; 
	document.getElementById("s9").value='${seven.special_note_description}';
	document.getElementById("s3").value=changeForDate('${seven.work_start_date}'); 
	document.getElementById("s4").value=changeForDate('${seven.work_end_date}');

}

function changeForDate(date){
	var changeDate;
	 var changeYear = date.substring(date.length -4);
	 var changeMonth = '';
	 var changeDay = date.substring(8, 10);
	 console.log(changeYear);
	 console.log(changeMonth);
	 var arrayMonth = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
	 
	for(i in arrayMonth){
		if(date.includes(arrayMonth[i])){
			var sum = parseInt(i)+1;
			
			if(sum/10 < 1){
				changeMonth = '0'+ sum;
			}else{
		  		changeMonth = sum;
			}
		}
	}
	return changeDate = changeYear + "-" + changeMonth  + "-" + changeDay; 
}
 
</script>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<title>Insert title here</title>
</head>
<body>
${count} 왜안됨<br>
${seven.work_position}<br>
	<div class="col container-fluid my-5 py-5" style="width : 1500px;">
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
               <!-- 고정 -->
               


               
           <form name="form1">
           <c:if test="${!empty count}">
			<input type="button" onclick="getUserDetail()" value="임시저장 ${count}"><br>
			</c:if>
                <div class="row border-bottom mt-5">
                    <div class="row ms-0 mb-2">근무경력 사항</div>
                </div>
                <div class="col">
                    <div class="row">
                    <table class="table ">
                        <tbody>
                        <tr>
                            <th scope="row" class="table-active">회사명/활동기관 명</th>
                            <td><div class="col"><input type="text" id="s1" name="company_name"></div></td>
                            <th class="table-active">수행업무</th>
                            <td><div class="col"><input type="text"id="s5" name="work_description"></div></td>
                        </tr>
                        <tr>
                            <th scope="row" class="table-active">근무 시작 일자</th>
                            <td><div class="col"><input type="date" id="s3" name="work_start_date"></div></td>
                            <th class="table-active">근무 종료 일자</th>
                            <td><div class="col"><input type="date" id="s4" name="work_end_date"></div></td>
                        </tr>
                        <tr>
                            <th scope="row" class="table-active">부서</th>
                            <td><div class="col"><input type="text" id="s6" name="work_department"></div></td>
                            <th class="table-active">직책</th>
                            <td><div class="col"><input type="text" id="s7" name="work_position"></div></td>
                        </tr>
                        <tr>
                            <th scope="row" class="table-active">경력구분</th>
                            <td><div class="col">
                                <select id="s2" name="carer_type">
                                        <option value="ca">법원감정인 경력</option>
                                        <option value="ot">기타 경력</option>
                                </select>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    
                </div>
                <div class="row border-bottom mt-5">
                    <div class="row ms-0 mb-2">활동경력</div>
                </div>
                <div class="row">
                    <table class="table ">
                        <tbody>
                        <tr>
                            <th scope="row" class="table-active">활동경력</th>
                            <td><div class="col"><textarea id="s8" name="carer_description"  rows="5" cols="130"></textarea></div></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="row border-bottom mt-5">
                    <div class="row ms-0 mb-2">특기사항</div>
                </div>
                <div class="row">
                    <table class="table ">
                        <tbody>
                        <tr>
                            <th scope="row" class="table-active">특기사항</th>
                            <td><div class="col"><textarea id="s9" name="special_note_description" rows="5" cols="130"></textarea></div></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
             <c:choose>
            	<c:when test="${!empty count}">
            		<button type="submit" formaction="careerUpProcess" formmethod="get">업데이트</button>
            	</c:when>
            	<c:otherwise>
            		<button type="submit"  formaction="careerInsProcess" formmethod="get">인설트</button>
            	</c:otherwise>
             </c:choose>
        </form>
            
        </div> 
      
      
</body>
</html>