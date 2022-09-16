<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="../resources/css/common.css">
<title>마이페이지</title>
<style type="text/css">
	.btn-pointer {
		cursor: pointer;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../resources/js/common.js"></script>
<script type="text/javascript">
var errMsg = '${errorMsg}';

window.addEventListener("DOMContentLoaded", function() {
	// 실행 시 가장 먼저 에러메세지 유무 확인
	showErrMsg(errMsg);
	
});

function modifyPassword() {
	
	if(!chkVal()) {
		return;
	}
	
	let param = {
			user_proper_num : '${user.user_proper_num}',
			new_pw : document.getElementById('new_pw').value
	}
	$.ajax({
		url: './modifyPasswordProcess',
		method: 'post',
		data : param,
		dataType: 'json',
	}).done(function(obj) {
		console.log(obj.result);
		if(obj.result == 'success') {
			alert('비밀번호 변경이 완료되었습니다.');
			location.href="./main";
			
		} else if(obj.result == 'fail') {
			alert('비밀번호 변경 실패하였습니다.');
			location.reload();
		}
		
	}).fail(function(e) {
		
	})
}

function chkVal() {
	let result = true;
	
	let values = document.getElementsByTagName('input');
	
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
	}
	
	if(!result){
		return false;
	}
	
	
	// 현재 비밀번호 일치 검사
	let myCurrPwd = '${user.user_pw}';
	let inputCurrPwd = document.getElementById('current_pw');
	
	if(myCurrPwd !== inputCurrPwd.value) {
		let box = inputCurrPwd.parentNode.parentNode.parentNode;
		let msg = box.getElementsByClassName('msg');
		for(e of msg) {
			e.innerText = '현재 비밀번호가 일치하지 않습니다.';
			result = false;
		}
	}
	
	if(!result) {
		return false;
	}
	
	
	// 새 비밀번호 일치 검사
	let newPwd = document.getElementById('new_pw')
	let newChkPwd = document.getElementById('new_chk_pw');
	if(newPwd.value !== newChkPwd.value) {
		let box = newChkPwd.parentNode.parentNode.parentNode;
		let msg = box.getElementsByClassName('msg');
		for(e of msg) {
			e.innerText = '새 비밀번호가 일치하지 않습니다.'
			result = false;
		}
	}
	
	if(!result) {
		return false;
	}
	
	return true;
}

</script>
</head>
<body>
	<div class="col container-fluid" style="width : 1600px;">
		<div class="row">
			<jsp:include page="../common/header.jsp"></jsp:include>
			<div class="col">
				<jsp:include page="./myPageNav.jsp"></jsp:include>
			</div>
			<div class="col-9 mt-4 px-5 mx-5">
			
				<div class="row border-bottom border-2 border-secondary py-2">
					<div class="col">
						<span class="fw-bold fs-3">내정보</span>
					</div>	
					<div class="col text-center pt-2">
						<span class="fw-bold fs-5 text-secondary btn-pointer" onclick="location.href='./identityVerificate';">내정보 관리</span>
					</div>
					<div class="col text-center pt-2">
						<span class="fw-bold fs-5 text-info btn-pointer" onclick="location.href='./modifyPassword';">비밀번호 변경</span>
					</div>
					<div class="col text-center pt-2">
						<span class="fw-bold fs-5 text-secondary btn-pointer" onclick="location.href='./withdrawal';">회원탈퇴</span>
					</div>
					<div class="col-5"></div>
				</div>
				
				
				<div class="row border-secondary border-opacity-25 border-bottom pt-4 pb-1">
					<div class="col">
						 
						<div class="row">
							<div class="col">
								<div class="row">
									<div class="col-2 fw-bold pt-1"><span>현재 비밀번호</span></div>
									<div class="col-3"><input class="form-control" type="password" id="current_pw"></div>
								</div>
								<div class="row mb-2"><div class="col-2"></div><div class="col"><span class="mx-1 msg"></span></div></div>	
							</div>
						</div>
						
						<div class="row">
							<div class="col">
								<div class="row">
									<div class="col-2 fw-bold pt-1"><span>새 비밀번호</span></div>
									<div class="col-3"><input class="form-control" type="password" id="new_pw" name="new_pw"></div>
								</div> 
								<div class="row mb-2"><div class="col-2"></div><div class="col"><span class="mx-1 msg"></span></div></div>		
							</div>
						</div>
						
						<div class="row">
							<div class="col">
								<div class="row">
									<div class="col-2 fw-bold pt-1"><span>새 비밀번호 확인</span></div>
									<div class="col-3"><input class="form-control" type="password" id="new_chk_pw"></div>
									<div class="col"><input type="button" class="btn btn-primary" onclick="modifyPassword();" value="변경하기"></div>
								</div> 
								<div class="row mb-2"><div class="col-2"></div><div class="col"><span class="mx-1 msg"></span></div></div>	
							</div>
						</div>
						 
					</div>
				</div>
			
			</div>
			<jsp:include page="../common/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>