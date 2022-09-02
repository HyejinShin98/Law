<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
	            <div class="row">재판조력자 선발 신청자 경력상세</div>
	            	
	                <div class="row">
	                    <div class="row">
	                    	<div class="col">첨부서류 분류 코드</div>
	                    	<div class="col">
	                    		<div class="col"><input type="radio" name="file_code"></div>
	                    		<div class="col"><input type="radio" name="file_code"></div>
	                    		<div class="col"><input type="radio" name="file_code"></div>
	                    		<!-- 여기에 남여 같은거 적어야됨 -->
	                    	</div>
	                    </div>
	                     <div class="row">
	                    	<div class="col">첨부서류 타입</div>
	                    	<div class="col">
	                    		<div class="col"><input type="file" name="file_type" value="businesslicense"></div>
	                    		<div class="col"><input type="file" name="file_type" value="businessreport"></div>
	                    		<div class="col"><input type="file" name="file_type" value="taxconfirm"></div>
	                    		<div class="col">v  <input type="file" name="file_type" value="resume"></div>
	                    		<div class="col"><input type="file" name="file_type" value="educationlevel"></div>
	                    		<div class="col"><input type="file" name="file_type" value="educationlevel"></div>
	                    	</div>
	                    </div>
	                     <div class="row">
	                    	<div class="col"></div>
	                    	<div class="col"><input type="file" name="original_file_name"></div>
	                    </div>
	                    <div class="row">
	                    	<input type="hidden" name="file_path">
	                    </div>
	                </div>
	                
	                <div class="row"><div class="col d-grid"><button class="btn">다음단계</button></div></div>
	            </div>
            </form>
        </div>
       </div>
</body>
</html>