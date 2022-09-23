<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
window.addEventListener("DOMContentLoaded", function() {
	// 실행 시 가장 먼저 에러메세지 유무 확인
	/* loginCheck(); */
	
});

var isLogined = true;

/* function loginCheck(){
	var xhr = new XMLHttpRequest(); //AJAX 객체 생성
	xhr.onreadystatechange = function () {
		if(xhr.readyState == 4 && xhr.status == 200){
			var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)
			if(jsonObj.data == false){
					alert("로그인을 해주세요");
					window.location.href="../user/login";
					
					isLogined = false;
					
					return false;
				}
			}
		}
	
	
xhr.open("get" , "isLogin" , false); //리퀘스트 세팅..
//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
xhr.send(); //AJAX로 리퀘스트함..		
} */

/* 아니오 누를경우 경력내용 비활성화 */
function cutOff(elementId){
	var el =  document.getElementById(elementId);
	el.readOnly= true;
}
/*  */
/* 예 누를경우 경력내용 활성화 */
function cutOn(elementId){
	var el =  document.getElementById(elementId);
	el.readOnly= false;
}
/* 임시저장 */
function getUserDetail(){
	document.getElementById("s2").value='${five.court_proper_num}'; 
	
	document.getElementById("s4").value='${five.ligtn_case_carer_etc}'; 
	
	document.getElementById("s6").value='${five.insrn_indst_carer_etc}'; 
	
	document.getElementById("s8").value='${five.criminal_penalty_carer_etc}'; 
	

	
	if('${five.ligtn_case_carer_yn}' == 'y'){
		document.getElementById("s31").checked = true;
		document.getElementById("s4").readOnly = false;
	}else{
		document.getElementById("s32").checked = true;
		document.getElementById("s4").readOnly = true;
	}
	if('${five.insrn_indst_carer_yn}' == 'y'){
		document.getElementById("s51").checked = true;
		document.getElementById("s6").readOnly = false;
	}else{
		document.getElementById("s52").checked = true;
		document.getElementById("s6").readOnly = true;
	}
	if('${five.criminal_penalty_carer_yn}' == 'y'){
		document.getElementById("s71").checked = true;
		document.getElementById("s8").readOnly = false;
	}else{
		document.getElementById("s72").checked = true;
		document.getElementById("s8").readOnly = true;
	}
}
function didUseBoard(eleId1, eleId2){
		var yes = document.getElementById(eleId1);
		var no = document.getElementById(eleId2);
		if(yes == null || no == null){
			alert("예, 아니오를 입력해 주세요");
		}
}



</script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<title>등재신청 기본정보</title>
</head>
<body>
유저이름 : ${five.user_proper_num} <br>
공고번호 : ${five.announce_proper_num}<br>
신청번호 : ${five.aplcn_dtls_proper_num} <br>
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

        <!-- 여긴 위에 -->






		<form name="form1">
		<c:if test="${!empty count}">
			<input type="button" onclick="getUserDetail()" value="임시저장 ${count}"><br>
		</c:if>
        <div class="row border-bottom mt-5 mx-0">
            감정분야 및 세부구분 선택
        </div>
        <!-- <div class="row">
            <table class="table ">
                <tbody>
                <tr>
                    <th scope="row" class="table-active">감정분야 선택</th>
                    <td>
                            <div class="col">
                            <select id="grlist1">
                                    <option value="">일반감정인</option>
                                    <option value="">통번역인</option>
                                    <option value="">기관추천조력자</option>
                            </select>
                            <select id="s1" name="trial_fcltt_proper_num">
                                <option value="1">측량</option>
                                <option value="2">문서</option>
                                <option value="3">경매</option>
                                <option value="4">통역인</option>
                                <option value="5">번역인</option>
                                <option value="6">통번역인</option>
                                <option value="7">의사</option>
                                <option value="8">회계사</option>
                            </select>
                            </div>
                    </td>
                </tr>
                </tbody>
            </table> 
        </div> -->


        <div class="row border-bottom mt-5 mx-0">
            <div class="col">희망법원선택</div>
            <div class="col">* 한곳의 법원에서 부적격 판정 시 다른 법원에서도 부적격이 될 수 있습니다.</div>
        </div>
        <div class="row">
            <table class="table ">
                <tbody>
                <tr>
                    <th scope="row" class="table-active">감정분야 선택</th>
                    <td>
                        <div class="col">
                        <select id="s2" name="court_proper_num">
                                <option value="1">서울북부지방법원</option>
                                <option value="2">서울가정법원</option>
                                <option value="3">서울행정법원</option>
                                <option value="4">서울회생법원</option>
                                <option value="5">서울동부지방법원</option>
                                <option value="6">서울남부지방법원</option>
                        </select>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table> 
        </div>

        <div class="row">
            만일 감정인이 원거리에 있는 여러 법원을 선택하여 감정서를 늦게 제출하거나 정당한 이유 없이 감정인이 되기를 거부하는 등의 사유<br>
            가 발생할 경우에 감정인 등록이 삭제되거나 재등록 심사 시 부적격자로 감정인 선정에서 탈락할 수 있으니 여러개의 법원을 신청 시 이<br>
            점 유념하시기 바랍니다
        </div>
           
        <div class="row border-bottom mt-5">
            <div class="row ms-0 mb-2">활동경력</div>
        </div>
        <div class="row">
            
            <table class="table ">
                <tbody>
                <tr class="table-active">
                    <th colspan="4" scope="col">경력명</th>
                    <th scope="col">경 력 유 무</th>
                    <th scope="col"></th>
                    <td scope="col">경력내용</td>
                </tr>
                <tr>
                    <th colspan="4" scope="col" >소송사건 당사자 경력</th>
                    <td scope="col">
                    <input type="radio" id="s31" onclick="cutOn('s4');" name="ligtn_case_carer_yn" value='y'> 예 
                    <input type="radio" id="s32" onclick="cutOff('s4');" name="ligtn_case_carer_yn" value='n'> 아니오 
                    </td>
                    <td scope="col"></td>
                    <td scope="col"><textarea id="s4" onclick="didUseBoard('s31', 's32')" name="ligtn_case_carer_etc" cols="80" ></textarea></td>
                </tr>
                <tr>
                    <th colspan="4" scope="col" >보험업계 자문 경력</th>
                    <td scope="col"><input type="radio" id="s51" onclick="cutOn('s6');"  name="insrn_indst_carer_yn" value='y'> 예 
                    	<input type="radio" onclick="cutOff('s6');" id="s52" name="insrn_indst_carer_yn" value='n'> 아니오 </td>
                    <td scope="col"></td>
                    <td scope="col"><textarea id="s6" onclick="didUseBoard('s51', 's52')" name="insrn_indst_carer_etc"   cols="80"></textarea></td>
                </tr>
                <tr>
                    <th colspan="4" scope="col" >형사처벌 받은 경력</th>
                    <td scope="col"><input type="radio" id="s71" onclick="cutOn('s8');" name="criminal_penalty_carer_yn" value='y'> 예
                     <input type="radio" id="s72" onclick="cutOff('s8', );" name="criminal_penalty_carer_yn" value='n'> 아니오 </td>
                    <td scope="col"></td>
                    <td scope="col"><textarea id="s8" onclick="didUseBoard('s71', 's72')" name="criminal_penalty_carer_etc" cols="80"></textarea></td>
                </tr>
                </tbody>
            </table>
            <c:choose>
            	<c:when test="${!empty count}">
            		<button type="submit" formaction="userDetailUpProcess" formmethod="get">업데이트</button>
            	</c:when>
            	<c:otherwise>
            		<button type="submit" formaction="userDetailInsProcess" formmethod="get">인설트</button>
            	</c:otherwise>
            </c:choose>		
            </div>
        </form>
        </div>
        

   
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>