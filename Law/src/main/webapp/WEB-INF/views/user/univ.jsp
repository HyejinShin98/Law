<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function getUserDetail(){
	document.getElementbyId
	
	document.getElementById("s1").value='${six.edctn_school_name}';
	document.getElementById("s2").value='${six.edctn_major}'; 
	document.getElementById("s3").value='${six.edctn_degree}'; 
	document.getElementById("s4").value= changeForDate('${six.edctn_admsn_date}'); 
	document.getElementById("s5").value= changeForDate('${six.edctn_grdtn_date}');
	
	if('${six.edctn_final_yn}' == 'y'){
		document.getElementById("s61").checked = true;
	}else{
		document.getElementById("s62").checked = true;
	}
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

function checkList(){
	
	let result = true;
	
	let check = document.getElementsByTagName("input");
	
	let ss = document.getElementById("ss");
	// 메세지 초기화
	let msg = document.getElementsByClassName('msg');
	for(e of msg) {
		e.innerText = '';
	}
	
	// 공백검사
	for(let i=0; i<check.length; i++) {
		let box = check[i].parentNode.parentNode.parentNode;
		let msg = box.getElementsByClassName('msg');
		
		if(check[i].value == '') {
			for(e of msg) {
				e.innerText = '필수입력입니다.';
				result = false;
			}
		}
	}
	if(result){
		ss.submit();
		alert("oo");
	}else{
		alert("nn");
	}
}

</script>

<meta charset="UTF-8">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<title>Insert title here</title>
</head>
<body>
	  <div class="col container-fluid" style="width : 960px;">
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
               


                <div class="col border-bottom mt-5">
                    <div class="row ms-0 mb-2">학력사항</div>
                </div>
                <c:choose>
            		<c:when test="${!empty count}">
	            		<form id="ss" action="./univUpProcess">
	            	</c:when>
	            	<c:otherwise>
	            		<form id="ss" action="./univInsProcess">
	            	</c:otherwise>
       			</c:choose>		
				<c:if test="${!empty count}">
					<input type="button" onclick="getUserDetail()" value="임시저장 ${count}"><br>
				</c:if>
                <div class="col">
                    <table class="table ">
                        <tbody>
                          <tr>
                            <th scope="row" class="table-active">학교명</th>
                            <td><div class="col"><input type="text" id="s1" name="edctn_school_name"><span class="msg"></span></div></td>
                            <td class="table-active">최종학력</td>
                            <td><div class="col"><input type="radio" id="s61" name="edctn_final_yn" value='y' >맞음 <span class="msg"></span></div>
                            	<div class="col"><input type="radio" id="s62" name="edctn_final_yn" value='n' >아님 <span class="msg"></span></div>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row" class="table-active">학과(전공)</th>
                            <td><div class="col"><input type="text" id="s2"  name="edctn_major" ><span class="msg"></span></div></td>
                            <td class="table-active">학위</td>
                            <td><div class="col-4">
                                	<select id="s3" name="edctn_degree"> 
                                        <option value="graduation">졸업</option>
                                        <option value="Attending">재학</option>
                                        <option value="absence">휴학</option>
                                        <option value="dropout">중퇴</option>
                                        <option value="expel">퇴학</option>
                                	</select>
                                	<div class="col"><span class="msg"></span></div>
                                </div>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row" class="table-active">입학 년월</th>
                            <td><div class="col"><input type="date" id="s4" name="edctn_admsn_date"></div>
                            	<div class="col"><span class="msg"></span></div>
                            </td>
                            <td class="table-active">졸업 년월</td>
                            <td><div class="col"><input type="date" id="s5" name="edctn_grdtn_date"></div>
                            <div class="col"><span class="msg"></span></div>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      <div class="row"><a onclick="checkList();">확인용 </a></div>
                       <c:choose>
		            	<c:when test="${!empty count}">
		            		<a type="button" onclick="checkList();">업데이트</a>
		            	</c:when>
		            	<c:otherwise>
		            		<a type="button" onclick="checkList();">인설트</a>
		            	</c:otherwise>
            			</c:choose>		
                </div>
                </form>
           </div>     
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>