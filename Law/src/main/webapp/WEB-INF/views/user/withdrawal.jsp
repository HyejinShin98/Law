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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../resources/js/common.js"></script>
<script type="text/javascript">
	var errMsg = '${errorMsg}';
	
	window.addEventListener("DOMContentLoaded", function() {
		// 실행 시 가장 먼저 에러메세지 유무 확인
		showErrMsg(errMsg);		
	});
	
	// 탈퇴하기 버튼
	function withdrawal(){
		let user_pw = document.getElementById('user_pw').value;
		let msg = document.getElementById('failMsg');
		msg.innerText = '';
		
		if(user_pw == '') {
			msg.innerText = '비밀번호를 입력해주세요.';
			return;
		}
		
		let param = {
			user_proper_num : document.getElementById('user_proper_num').value,
			user_pw : user_pw
		};
		
		$.ajax({
			url: './withdrawalProcess',
			method: 'post',
			data: param,
			dataType: 'json',
		}).done(function(obj) {
			if(obj.result == 'success') {
				alert('회원탈퇴가 완료되었습니다. \n이용해주셔서 감사합니다.');
				location.href = './main';
			} else if(obj.result == 'fail') {
				msg.innerText = '비밀번호가 일치하지 않습니다.';
			}
			
			
		}).fail(function(e) {
			
		})
		
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
						<span class="fw-bold fs-5 text-secondary btn-pointer" onclick="location.href='./modifyPassword';">비밀번호 변경</span>
					</div>
					<div class="col text-center pt-2">
						<span class="fw-bold fs-5 text-info btn-pointer" onclick="location.href='./withdrawal';">회원탈퇴</span>
					</div>
					<div class="col-5"></div>
				</div>
				
				<div class="row">
					<div class="col">
						<div class="row py-4">
							<div class="col">
								<div class="row"><div class="col fs-5 fw-bold mb-1 text-secondary"><span>아이디 재사용 및 복구 불가 안내</span></div></div>
								<div class="row"><div class="col text-secondary">
									<span>회원탈퇴 진행 시 본인을 포함한 타인 모두 <span class="text-danger text-opacity-75">아이디 재사용이나 복구가 불가능합니다.</span><br>
										계속해서 탈퇴를 원하시면 비밀번호를 입력해주세요.
									</span>
								</div></div>
							</div>
						</div>
						
						<div class="row border-top border-secondary border-opacity-25 border-bottom pt-4">
							<div class="col">
							
								<div class="row pb-2">
									<div class="col-2 fw-bold pt-1"><span>아이디</span></div>
									<div class="col-3"><span class="">${user.user_id }</span></div>
								</div>	
								<div class="row pt-2">
									<div class="col-2 fw-bold pt-1"><span>비밀번호</span></div>
									<div class="col-3"><input type="password" class="form-control" placeholder="비밀번호 입력" id="user_pw"></div>
									<div class="col"><input type="button" class="btn btn-outline-danger" value="탈퇴하기" onclick="withdrawal();"></div>
								</div>
								<input type="hidden" value="${user.user_proper_num }" id="user_proper_num">
							
								<div class="row pb-3">
									<div class="col-2"></div>
									<div class="col"><span class="mx-1 msg" id="failMsg"></span></div>
								</div>
								
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