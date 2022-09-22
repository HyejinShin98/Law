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
<title>마이페이지</title>
<script src="../resources/js/common.js"></script>
<script type="text/javascript" src="../resources/js/myApplication.js"></script>
<script type="text/javascript">
	var errMsg = '${errorMsg}';
	var userNo = '${aplcn_dtls_proper_num}';
	
	window.addEventListener("DOMContentLoaded", function() {
		// 실행 시 가장 먼저 에러메세지 유무 확인
		showErrMsg(errMsg);
		
		userDetailWrite();
		
		// 버튼 클릭시 렌더링
		var navClassName ='nav-btn';
		var navBtn = document.getElementsByClassName(navClassName);
		for(btn of navBtn){
			btn.addEventListener('click', function(e){
				var addId = this.id;
				
				changeBtn(addId, navClassName);
				
				switch(addId){
					case 'oneTab' : 
						userDetailWrite();
						break;
					case 'fiveTab' : 
						tableFiveInfo();
						break;
					case 'sixTab' : 
						tableSixInfo();
						break;
					case 'sevenTab' : 
						tableSevenInfo();
						break;
					case 'eightTab' : 
						tableEightInfo();
						break;
					case 'nineTab' :
						tableNineInfo();
						break;
				}
			});
		}	
	});
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
				<span class="fw-bold fs-4 text-secondary">나의 등재신청 작성</span>
			</div>	
		</div>
			
 		<div class="row text-center mt-5 mx-0 mb-4"><!-- 네비바 -->            
            <div class="col-2 py-3 nav-btn border border-bottom-0 text-primary text-opacity-50 fw-bold" id="oneTab"><span>기본정보</span></div>
            <div class="col-2 py-3 nav-btn border bg-secondary bg-opacity-10" id="fiveTab"><span>신청정보</span></div>
            <div class="col-2 py-3 nav-btn border bg-secondary bg-opacity-10" id="sixTab"><span>학력정보</span></div>
            <div class="col-2 py-3 nav-btn border bg-secondary bg-opacity-10" id="sevenTab"><span>경력정보</span></div>
            <div class="col-2 py-3 nav-btn border bg-secondary bg-opacity-10" id="eightTab"><span>자격증정보</span></div>
            <div class="col-2 py-3 nav-btn border bg-secondary bg-opacity-10" id="nineTab"><span>첨부파일 정보</span></div>
        </div>
 		<div class="row mx-0">
			<div id="nav-info" class="col"></div>
		</div> 
		
		
		
		</div>
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>