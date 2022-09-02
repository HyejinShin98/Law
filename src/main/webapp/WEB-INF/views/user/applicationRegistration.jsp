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
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
	재판조력자 등재신청
</body>
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
        	<form action="../applicationRegistrationProcess">
	            <div class="row">신청인 기본정보</div>
	            <div class="row">
	                <div class="row">
	                    <div class="col">이름</div>
	                    <div class="col"><input type="password" name="user_name"></div>
	                </div>
	                <div class="row">
	                    <div class="col">휴대전화번호</div>
	                    <div class="col"><input type="text" name="user_phone"></div>
	                    <!-- <div class="col">전화번호</div>
	                    <div class="col"><input type="text" name="user"></div> -->
	                </div>
	                <div class="row">
	                    <div class="col">직업</div>
	                    <div class="col"><input type="text" name="user_job"></div>
	                </div>
	                <div class="row">
	                    <div class="col">이메일</div>
	                    <div class="col"><input type="text" name="user_email"></div>
	                </div>
	                <div class="row">
	                    <div class="row">
	                        <div class="col">우편번호 : </div>
	                        <div class="col"><input type="text" name="user_zipcode"></div>
	                    </div>
	                    <div class="row">
	                        <div class="col">주소 : </div>
	                        <div class="col"><input type="text" name="user_street_addr"></div>
	                    </div>
	                    <div class="row">
	                        <div class="col">상세주소 : </div>
	                        <div class="col"><input type="text" name="user_detail_addr"></div>
	                    </div>
	                </div>
	                <div class="row">
	                    <div class="row">
	                        <div class="col">나이 : </div>
	                        <div class="col"><input type="number" name="user_zipcode"></div>
	                    </div>
	                    <div class="row">
	                        <div class="col">상세주소 : </div>
	                        <div class="col"><input type="text" name="user_detail_addr"></div>
	                    </div>
	                    <div class="row">
	                    	<div class="col">예금주 : </div>
	                    	<div class="col"><input type="text" name="user_holder"></div>
	                    </div>
	                    <div class="row">
	                    	<div class="col">은행명 : </div>
	                    	<div class="col"><input type="text" name="user_bank"></div>
	                    </div>
	                    <div class="row">
	                    	<div class="col">계좌번호 : </div>
	                    	<div class="col"><input type="text" name="user_account_num"></div>
	                    </div>
	                </div>
	                <div class="row"><div class="col d-grid"><button class="btn">다음단계</button></div></div>
	            </div>
            </form>
        </div>
       </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>