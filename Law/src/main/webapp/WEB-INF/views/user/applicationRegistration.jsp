<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<title>재판조력자 등재신청</title>
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
					alreadyCheckId.appendChild(checkList);
					
				}else{
					isChecked = true;
					var checkList = document.createElement("div");
					checkList.innerText="중복 아이디가 없습니다.";
					checkList.classList.add("text-success");
					checkList.classList.remove("text-danger");
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
			
			const pwInput = document.getElementById("pw");
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
			}
			
			insertUser.submit();
}
	


</script>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
	재판조력자 등재신청

	<div class="col container-fluid" style="width : 1800px;">
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
        
        <div class="row">
            <div class="row border-bottom">감정분야 및 세부구분선택</div>
            <div class="row">
                <div class="col">감정분야 선택</div>
                <div class="col">슬롯</div>
                <div class="col">슬롯</div>
            </div>
        </div>
        <div class="row">
            <div class="row">
                <div class="col">희망법원선택</div>
                <div class="col">*한곳의 법원에서 부적격 판정 시 다른 법원에서도 부적격이 될 수 있습니다.</div>
            </div>
            <div class="row">
                <div class="col">희망법원 선택</div>
                <div class="col">
                    <div class="col">
                        <div class="row">법원목록</div>
                        <div class="row">목록</div>
                    </div>
                    <div class="col">화살표</div>
                    <div class="col">
                        <div class="row">희망법원</div>
                        <div class="row">text</div>
                    </div>
                </div>
            </div>  
        </div>

        <div class="row">
            만일 감정인이 원거리에 있는 여러 법원을 선택하여 감정서를 늦게 제출하거나 정당한 이유 없이 감정인이 되기를 거부하는 등의 사유<br>
            가 발생할 경우에 감정인 등록이 삭제되거나 재등록 심사 시 부적격자로 감정인 선정에서 탈락할 수 있으니 여러개의 법원을 신청 시 이<br>
            점 유념하시기 바랍니다
        </div>
        <div class="row">
        	<form action="../user/applicationRegistrationProcess" id="insertUser">
	            <div class="row">신청인 기본정보</div>
	            <div class="row">
	                <div class="row">
	                    <div class="col">이름</div>
	                    <div class="col"><input type="text" id="name" name="user_name"></div>
	                </div>
	                <div class="row">
	                    <div class="col">휴대전화번호</div>
	                    <div class="col"><input type="text" id="phone" name="user_phone"></div>
	                </div>
	                <div class="row">
	                    <div class="col">직업</div>
	                    <div class="col"><input type="text" id="job" name="user_job"></div>
	                </div>
	                <div class="row">
	                    <div class="col">이메일</div>
	                    <div class="col"><input type="text" id="email" name="user_email"></div>
	                </div>
	                <div class="row">
	                    <div class="row">
	                        <div class="col">기본주소 : </div>
	                        <div class="col"><input type="text" id="ar" name="user_ar"></div>
	                    </div>
	                    <div class="row">
	                        <div class="col">우편주소 : </div>
	                        <div class="col"><input type="text" id="zonecode" name="user_ar_zonecode"></div>
	                    </div>
	                    <div class="row">
	                        <div class="col">지번주소 : </div>
	                        <div class="col"><input type="text" id="jibun" name="user_ar_jibun"></div>
	                    </div>
	                    <div class="row">
	                        <div class="col">상세주소 : </div>
	                        <div class="col"><input type="text" id="detail" name="user_ar_detail"></div>
	                    </div>
	                </div>
	                <div class="row">
	                    <div class="row">
	                        <div class="col">나이 : </div>
	                        <div class="col"><input type="number" id="age" name="user_age"></div>
	                    </div>
	                    
	                    <div class="row">
	                    	<div class="col">예금주 : </div>
	                    	<div class="col"><input type="text" id="bankHolder" name="user_bank_holder"></div>
	                    </div>
	                    <div class="row">
	                    	<div class="col">은행명 : </div>
	                    	<div class="col"><input type="text" id="bank" name="user_bank"></div>
	                    </div>
	                    <div class="row">
	                    	<div class="col">계좌번호 : </div>
	                    	<div class="col"><input type="text" id="account" name="user_bank_account"></div>
	                    </div>
	                    <div class="row">
	                    	<div class="col">아이디 : </div>
	                    	<div class="col">
	                    		<input type="text" id="checkId" onblur="checkListId()" name="user_id">
	                    		<div id="alreadyCheckId" class="row msg"></div>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="col">비밀번호 : </div>
	                    	<div class="col"><input type="password" id="pw" name="user_pw"></div>
	                    </div>
	                </div>
	               		<input type="button" onclick="insertUser()" value="회원가입">
	            </div>
            </form>
        </div>
       </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>