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
	

function modifyMyInfo() {
	
	let zonecode = document.getElementById('user_ar_zonecode').disabled = false;
	let frmData = $('form[name=myInfoFrm]').serialize();
	
	$.ajax({
		url: './modifyMyInfo',
		method: 'post',
		data: frmData,
		dataType : 'json'
		
	}).done(function(obj) {
		//console.log('result : ' + obj.result)
		
		if(obj.result == 'success') {
			alert('수정 완료 되었습니다.');
			location.href = './myInfo';
		} else if(obj.result == 'error') {
			alert('수정 실패하였습니다.')
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
						<span class="fw-bold fs-3 ">내정보</span>
					</div>	
					<div class="col text-center pt-2">
						<span class="fw-bold fs-5 text-info btn-pointer" onclick="location.href='./identityVerificate';">내정보 관리</span>
					</div>
					<div class="col text-center pt-2">
						<span class="fw-bold fs-5 text-secondary btn-pointer" onclick="location.href='./modifyPassword';">비밀번호 변경</span>
					</div>
					<div class="col text-center pt-2">
						<span class="fw-bold fs-5 text-secondary btn-pointer" onclick="location.href='./withdrawal';">회원탈퇴</span>
					</div>
					<div class="col-5"></div>
				</div>
				
				<form id="myInfoFrm" name="myInfoFrm">
					<div class="row">
						<div class="col">
							<div class="row border-bottom border-secondary border-opacity-25 py-3">
								<div class="col-2 fw-bold"><span>아이디</span></div>
								<div class="col"><span>${user.user_id }</span></div>
							</div>
							<div class="row border-bottom border-secondary border-opacity-25 py-3">
								<div class="col-2 fw-bold"><span>이름</span></div>
								<div class="col"><span>${user.user_name }</span></div>
							</div>	
							<div class="row border-bottom border-secondary border-opacity-25 py-3">
								<div class="col-2 fw-bold pt-2"><span>이메일</span></div>
								<div class="col-3"><input class="form-control" type="text" name="user_email" id="user_email" value="${user.user_email }"></div>
							</div>
							<div class="row border-bottom border-secondary border-opacity-25 py-3">
								<div class="col-2 fw-bold pt-2"><span>연락처</span></div>
								<div class="col-2"><input class="form-control" type="text" name="user_phone" id="user_phone" value="${user.user_phone}"></div>
							</div>
							<div class="row border-bottom border-secondary border-opacity-25 py-3">
								<div class="col-2 fw-bold pt-2"><span>직업</span></div>
								<div class="col-2"><input class="form-control" type="text" name="user_job" id="user_job" value="${user.user_job }"></div>
							</div>
							<div class="row border-bottom border-secondary border-opacity-25 py-3">
								<div class="col-2 fw-bold pt-4"><span>주소</span></div>
								<div class="col">
									<div class="row pb-2 input-group">
										<div class="col"><input class="form-control" type="text" value="${user.user_ar_zonecode}" name="user_ar_zonecode" id="user_ar_zonecode" disabled></div>
										<div class="col-4"><input class="form-control" type="text" value="${user.user_ar}" name="user_ar" id="user_ar"></div>
										<div class="col-1"><input class="form-control" type="button" value="검색" onclick="searchAddress();"></div>
										<div class="col-5"></div>
									</div>
									 <div class="row pb-2">
										<div class="col-5"><input class="form-control" type="text" value="${user.user_ar_detail}" name="user_ar_detail" id="user_ar_detail"></div>
									</div>
								</div>
							</div>		
							<div class="row border-bottom border-secondary border-opacity-25 py-3">
								<div class="col-2 fw-bold pt-2"><span>계좌은행</span></div>
								<div class="col-2">
									<select class="form-select" id="user_bank" name="user_bank">
										<option value="woorie">우리은행</option>
										<option value="shinhan">신한은행</option>
										<option value="kuckmin">국민은행</option>
										<option value="kiup">기업은행</option>
									</select>
								</div>
								
							</div>	
							<div class="row border-bottom border-secondary border-opacity-25 py-3">
								<div class="col-2 fw-bold pt-2"><span>계좌번호</span></div>
								<div class="col-2"><input class="form-control" type="text" value="${user.user_bank_account}" id="user_bank_account" name="user_bank_account"></div>
							</div>	
							<div class="row border-bottom border-secondary border-opacity-25 py-3">
								<div class="col-2 fw-bold pt-2"><span>예금주</span></div>
								<div class="col-2"><input class="form-control" type="text" value="${user.user_bank_holder}" id="user_bank_holder" name="user_bank_holder">
								</div>
							</div>	
							<div class="row border-bottom border-secondary border-opacity-25 py-3">
								<div class="col-2 fw-bold "><span>가입일자</span></div>
								<div class="col"><span><fmt:formatDate pattern="yyyy-MM-dd" value="${user.user_joindate }" /></span>
								</div>
							</div>
						</div>
						<input type="hidden" value="${user.user_proper_num}" name="user_proper_num">
					</form>
					<div class="row mt-3 float-end">
						<div class="col-10"></div>
						<div class="col-2 d-grid"><input type="button" onclick="modifyMyInfo();" class="btn btn-primary" value="수정"></div>
					</div>
				</div>
				
			</div>
			<jsp:include page="../common/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>