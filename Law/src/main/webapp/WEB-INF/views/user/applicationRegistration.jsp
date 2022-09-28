<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<title>회원가입</title>
<!-- 외부 css 로드  -->
<link rel="stylesheet" type="text/css" href="../resources/css/common.css">
<style>

.ms{
	text-align-last: right;
	font-weight:bold;
	padding-right: 16px;
	font-size: larger;
}
.contentsinbox input{
	width: auto;
	float: left;
}
	
</style>
<script src="../resources/js/common.js"></script>
<script type="text/javascript">

window.addEventListener("DOMContentLoaded", function() {
	// 실행 시 가장 먼저 에러메세지 유무 확인
	
});

/* let values = document.getElementsByTagName('input');

// 메세지 초기화
let msg = document.getElementsByClassName('msg');
for(e of msg) {
	e.innerText = '';
}

// 공백검사
for(let i=0; i<values.length; i++) {
	let box = values[i].parentNode.parentNode.parentNode;
	let msg = box.getElementsByClassName('msg');
	
	if(values[i].value == '') {
		for(e of msg) {
			e.innerText = '필수입력입니다.';
			result = false;
		}
	}
} */


/*  */
function checkListId(){
	var check = document.getElementById("checkId").value;
	console.log(check);
	var xhr = new XMLHttpRequest(); //AJAX 객체 생성
	xhr.onreadystatechange = function () {
		if(xhr.readyState == 4 && xhr.status == 200){
			var result = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)
				
				var checkList = document.getElementById("alreadyCheckId").value;
				
			
				alreadyCheckId.innerHTML = "";
				
				if(result.count == true){
					isChecked = false;
					var checkList = document.createElement("div");
					checkList.innerText="이미 중복 아이디가 존재합니다";
					checkList.classList.remove("text-success");
					checkList.classList.add("text-danger");
					checkList.setAttribute("style", "font-size: 18px");
					checkList.setAttribute("style", "padding-left: 235px");
					checkList.setAttribute("style", "padding-top: 4px");
					alreadyCheckId.appendChild(checkList);
					
				}else{
					isChecked = true;
					var checkList = document.createElement("div");
					checkList.innerText="중복 아이디가 없습니다.";
					checkList.classList.add("text-success");
					checkList.classList.remove("text-danger");
					checkList.setAttribute("style", "font-size: 18px");
					checkList.setAttribute("style", "padding-left: 235px");
					checkList.setAttribute("style", "padding-top: 4px");
					alreadyCheckId.appendChild(checkList);
				}
	    }
	}
    xhr.open("get" , "./registerOverLabCheck?user_id=" + check); //리퀘스트 세팅..
	//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
	xhr.send(); //AJAX로 리퀘스트함..		
} 
var isChecked = false;

function insertUser(){

			
			const id = document.getElementById("checkId");
			
			if(isChecked == false){
				alert("아이디 중복 확인을 하셔야됩니다.");
				id.focus();
				return;
			}
			const insertUser = document.getElementById("insertUser");
			
			/* const pwInput = document.getElementById("pw");
			if(pwInput.value == ""){
				alert("비밀번호를 입력해 주세요");
				pwInput.focus();
				return;
			}
			const nameInput = document.getElementById("name");
			if(nameInput.value == ""){
				alert("이름을 입력해 주세요");
				nameInput.focus();
				return;
			}
			const ageInput = document.getElementById("age");
			if(ageInput.value == ""){
				alert("나이를 입력해 주세요");
				ageInput.focus();
				return;
			}
			const emailInput = document.getElementById("email");
			if(emailInput.value == ""){
				alert("이메일을 입력해 주세요");
				emailInput.focus();
				return;
			}
			const phoneInput = document.getElementById("phone");
			if(phoneInput.value  == ""){
				alert("휴대폰 번호를 입력해 주세요");
				phoneInput .focus();
				return;
			}
			const jobInput = document.getElementById("job");
			if(jobInput.value == ""){
				alert("직업을 입력해 주세요");
				jobInput.focus();
				return;
			}
			const detail = document.getElementById("detail");
			if(detail.value == ""){
				alert("주소를 입력해 주세요");
				detail.focus();
				return;
			}
			const bank = document.getElementById("bank");
			if(bank.value == ""){
				alert("은행 명을 입력해 주세요");
				bank.focus();
				return;
			}
			const account = document.getElementById("account");
			if(account.value == ""){
				alert("계좌번호을 입력해 주세요");
				account.focus();
				return;
			}
			const jibun = document.getElementById("jibun");
			if(account.value == ""){
				alert("주소를 입력해 주세요");
				account.focus();
				return;
			}
			const holder = document.getElementById("bankHolder");
			if(holder.value == ""){
				alert("예금명을 입력해 주세요");
				holder.focus();
				return;
			} */
			
			insertUser.submit();
}
$("#emailNum").blur(function(){
	user_email();
});
$("#emailAddress").change(function(){
	user_email();
});
function user_email(){
	const email = $("#emailNum").val();
	const middle = $("middle").text();
	const address = $("#emailAddress").val();
	if(email != "" && address != ""){
		$("#totalEmail").val(email+middel+address);
	}
};


</script>
<style>

.contentsinbox h4{
	clear:both; 
	font-size:12px;
	font-weight:bold;
	letter-spacing:-1px;
	line-height:1.3em;
	padding:0 11px;
	margin:5px 0;
	background:url('../resources/img/Registration/bullet_h4.gif') no-repeat 0 35% ;
}

.contentsinbox h5{
	clear:both; 
	font-size:12px;
	font-weight:bold;
	letter-spacing:-1px;
	line-height:1.3em;
	margin:3px 0;
	padding:0 0 0 10px;
	background:url('../resources/img/Registration/bullet_h4.gif') no-repeat 0 25%;
}
	
</style>
</head>
<body>
	<!-- 여기부터 다시 시작임 -->
	<div class="container-fluid" style="width: 960px;">
		<jsp:include page="../common/header.jsp"></jsp:include>
		
		<!-- 구분 이미지 -->
		<img src="../resources/img/sub_topimg.gif">
		
		<!-- 페이지 내용 -->
		<div class="row mt-2">

			<!-- 사이드 네비바 -->
			<div class="col-3 text-end">
                <jsp:include page="../common/applicationRegistrationLocalNav.jsp"></jsp:include>
            </div>
			
			<!-- 본문 -->
			<div class="col m-3">
				<!-- 현재위치 -->
				<div class="row text-end loc">
					<div class="col" style="font-size: 11px;">
						<span> 홈 > </span><span style="color: #72a8fe;font-weight: bold;">회원가입</span>
					</div>
				</div>
				<!-- 타이틀 -->
				<div class="row my-4">
					<div class="col">
						<img src="../resources/img/Guide/h3_ogi110.gif">
					</div>
				</div>
				
				
				<!-- 안내 -->
				<div class="contentsinbox">
					<h4 class="mar">회원가입</h4>
					<!--table start-->
					<div class="tabletop">
					<form action="../user/applicationRegistrationProcess" id="insertUser">
						<table class="list vline" summary="감정인의 종류 및 신청 방식" border="1">
							<colgroup>
							<col width="15%;">
							<col width="15%;">
							<col width="70%;">
                            </colgroup>
							<tbody>
								<tr>
									<th class="ms">아이디<span style="color:red"> *</span></td>
									<td colspan="2">
										<input type="text" class="form-control ms" id="checkId" onblur="checkListId()" name="user_id">
										<span id="alreadyCheckId" class="msg"></span>
									</td>
								</tr>
								<tr>
									<th class="ms">비밀번호<span style="color:red"> *</span></td>
									<td colspan="2"><input type="text" class="form-control ms" name="user_pw"></td>
								</tr>
								<tr>
									<th class="ms">이름<span style="color:red"> *</span></th>
									<td colspan="2"><input type="text" class="form-control ms" name="user_name"></td>
								</tr>
								<tr>
									<th class="ms">나이<span style="color:red"> *</span></th>
									<td colspan="2"><input type="text" class="form-control ms" name="user_age"></td>
								</tr>
								<tr>
									<th class="ms">직업<span style="color:red"> *</span></th>
									<td colspan="2"><input type="text" class="form-control ms" name="user_job"></td>
								</tr>
								<tr>
									<th class="ms">연락처<span style="color:red"> *</span></th>
									<td colspan="2"><input type="text" class="form-control ms" name="user_phone"></td>
								</tr>
								<tr>
									<th class="ms">이메일<span style="color:red"> *</span></th>
									<td colspan="2">
										<input type="text" id="emailNum" class="form-control ms" id="emailNum" >
										<span id="middle" style="float: left; font-size: 21px">@</span><input type="text" class="form-control" id="emailAddress" list="userEmailAddress">
										<datalist id="userEmailAddress">
											<option value="naver.com"></option>
											<option value="daum.com"></option>
											<option value="google.com"></option>
											<option value="직접입력"></option>
										</datalist>
										<input type="hidden" id="totalEmail" name="user_email" value="">
									</td>
								</tr>
								<tr>
									<th class="ms">기본주소<span style="color:red"> *</span></th>
									<td colspan="2"><input type="text" class="form-control ms" name="user_ar"></td>
								</tr>
								<tr>
									<th rowspan="3" scope="row" class="ms">주소<span style="color:red"> *</span></th>
									<td class="title">우편번호</td>
									<td><input type="text" class="form-control ms" name="user_ar_zonecode"></td>					
								</tr>
								<tr>
									<td class="title">지번주소</td>
									<td><input type="text" class="form-control ms" name="user_ar_jibun"></td>
								</tr>
								<tr>
									<td class="title">상세주소</td>
									<td><input type="text" class="form-control ms" name="user_ar_detail"></td>
								</tr>
								<tr>
									<th rowspan="3" scope="row" class="ms">은행<span style="color:red"> *</span></th>
									<td class="title">계좌 예금주</td>
									<td><input type="text" class="form-control ms" name="user_bank_holder"></td>
								</tr>
								<tr>
									<td class="title">계좌은행</td>
									<td><input type="text" class="form-control ms" name="user_bank"></td>			
								</tr>
								<tr>
									<td class="title">계좌 번호</td>
									<td><input type="text" class="form-control ms" name="user_bank_account"></td>
								</tr>
								
							</tbody>
						</table>
						<div class="row">
							<div class="col">
								<input type="button" class="btn btn-primary" onclick="insertUser()" value="회원가입">	
							</div>
						</div>
						</form>
					</div>
                </div>
            </div>
		</div>
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
       
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>