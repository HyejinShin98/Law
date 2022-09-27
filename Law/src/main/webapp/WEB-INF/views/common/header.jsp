<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="header" class="row align-items-center" style="height: 90px;">
	<div class="col-auto">
		<a class="navbar-brand" href="../user/main"><img src="../resources/img/Main/로고.png"></a>
	</div> 
	<div class="col">
		<!-- 홈, 로그인 -->	
		<div class="row text-center justify-content-end my-2" style="font-size: 11px;">
			<div class="col-3">
				<div class="row">
					<div class="col-2">
						<a href="../user/main">
							<span>홈</span>
						</a>
					</div>
					<c:choose>
						<c:when test="${!empty admin || !empty user}">
							<div class="col">
								<a href="../user/logout">
									<span>로그아웃</span>
								</a>
							</div>
						</c:when>
						<c:otherwise>
							<div class="col">
								<a data-bs-toggle="modal" data-bs-target="#staticBackdrop">
									<span>로그인</span>
								</a>
							</div>
							<div class="col">
								<a href="#">
									<span>회원가입</span>
								</a>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
		<!-- 메뉴 -->
		<div class="row text-center align-items-center my-2" style="font-size: 15px;">
			<c:choose>
				<c:when test="${!empty admin}">
					<div class="col">
						<a href="#">
							<span>현황조회</span>
						</a>
					</div>
					<div class="col">
						<a href="../admin/managementEvaluationtable">
							<span>재판조력자관리</span>
						</a>
					</div>
					<div class="col">
						<a href="../member/trialAssistantRegisterBoard">
							<span>게시글관리</span>
						</a>
					</div>
				</c:when>
				<c:otherwise>
					<div class="col">
						<a href="../user/applicationClause">
							<span>감정인등재신청</span>
						</a>
					</div>
					<div class="col">
						<a href="../member/systemGuide">
							<span>감정인신청안내</span>
						</a>
					</div>
					<div class="col">
						<a href="../user/identityVerificate">
							<span>My Page</span>
						</a>
					</div>
					<div class="col">
						<a href="../member/noticeBoard">
							<span>공지사항</span>
						</a>
					</div>
				</c:otherwise>
			</c:choose>
			<!-- 전체메뉴보기 -->	
			<div class="col">
				<a data-bs-toggle="collapse" href="#collapseAllMeru" role="button" aria-expanded="false" aria-controls="collapseAllMeru">
		        	전체메뉴보기
		      	</a>
			</div>
		</div>
	</div>
</div>
<div id="collapseAllMeru" class="collapse">
	<div>
		일단 확인용
	</div>
</div>
<!-- 로그인 Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
		<!-- 로그인 박스 -->
		<div class="row text-center pt-3">
			<div class="col align-self-center p-3">
				<!-- 아이디 비밀번호 입력 -->
				<form id="chkID" method="post">
					<div class="row">
						<div class = "col-1 pe-3 fs-3">
							<i class="bi bi-person-circle"></i>
						</div>
						<div class="col ps-3 form-control-lg d-grid">
							<input name="inputId" type="text" placeholder="아이디를 입력해주세요.">
						</div>
					</div>
					<div class="row">
						<div class = "col-1 pe-3 fs-3">
							<i class="bi bi-file-lock"></i>
						</div>
						<div class="col ps-3 form-control-lg d-grid">
							<input name="inputPw" type="password" placeholder="비밀번호를 입력해주세요.">
						</div>
					</div>
					<!-- 로그인 버튼 -->
					<div class="row py-2">
						<div class="col d-grid">
							<a type="button" class = "btn btn-primary" onclick="chkID()">로그인</a>
						</div>
					</div>
				</form>
				<!-- 회원가입 & 아이디 비밀번호 찾기 -->
				<div class="row rink_box py-2 text-center text-decoration-none">
					<div class="col">
						<a class = "text-secondary" href="./#"> 아이디 찾기 </a>
					</div>
					<div class="col">
						<a class = "text-secondary" href="./#"> 비밀번호 찾기 </a>
					</div>
					<div class="col">
						<a class = "text-secondary" href="./registerPage"> 회원가입 </a>
					</div>
				</div>
			</div>
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script>

    //로그인 Chk
    function chkID(){
    	var formData = new FormData(document.getElementById("chkID"));
    	var formBox = document.getElementById("chkID");
    	
    	var xhr = new XMLHttpRequest(); //AJAX 객체 생성
        xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
                var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)
                
                if(jsonObj.admin){
                	formBox.setAttribute("action","../admin/loginProcess");
                	console.log(formBox);
                }else{
                	formBox.setAttribute("action","../user/loginProcess");
                	console.log(formBox);
                }
                formBox.submit();
            }
        }
        
        xhr.open("post" , "../member/chkID"); //리퀘스트 세팅..
//         xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post 
        xhr.send(formData); //AJAX로 리퀘스트함..
        
    }
    
</script>
   
   