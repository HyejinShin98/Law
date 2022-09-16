<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">

function getUserDetail(){

	document.getElementById("s1").value='${eight.crtfc_type}'; 
	document.getElementById("s2").value='${eight.issue_agency}'; 
	document.getElementById("s3").value='${eight.crtfc_number}'; 
	document.getElementById("s4").value=changeForDate('${eight.issue_date}'); 
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
${eight.issue_agency}<br>
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
                            <th scope="row" class="table-active">종목 등급 명</th>
                            <td><div class="col">
                                <select id="s1" name="crtfc_type">
                                        <option value="Architectural">건축사</option>
                                        <option value="ot">가구제작산업기사</option>
                                        <option value="ot">가스기사</option>
                                        <option value="ot">건설기계설비기사</option>
                                        <option value="ot">건축산업기사</option>
                                        <option value="ot">방재기사</option>
                                </select>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="table-active">발급기관</th>
                            <td><div class="col"><input id="s2" type="text" name="issue_agency"></div></td>
                        </tr>
                        <tr>
                            <th scope="row" class="table-active">자격 면허 번호</th>
                            <td><div class="col"><input id="s3" type="text" name="crtfc_number"></div></td>
                        </tr>
                        <tr>
                            <th scope="row" class="table-active">발급일</th>
                            <td><div class="col"><input id="s4" type="date" name="issue_date"></div></td>
                        </tr>
                        </tbody>
                    </table> 
                </div>
                </div>
                <c:choose>
            	<c:when test="${!empty count}">
            		<button type="submit" formaction="licenseUpProcess" formmethod="get">업데이트</button>
            	</c:when>
            	<c:otherwise>
            		<button type="submit" formaction="licenseInsProcess" formmethod="get">인설트</button>
            	</c:otherwise>
             	</c:choose>
        </form>
        </div> 

</body>
</html>