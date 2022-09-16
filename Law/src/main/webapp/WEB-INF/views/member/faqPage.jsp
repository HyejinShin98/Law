<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<title>FAQ</title>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>

	<div id="content">
		<div class="row">
			<div class="col">
				<jsp:include page="../common/localNav.jsp"></jsp:include>
			</div>
		</div>
	
		<div class="row">
			<div class="col"></div>
			<div class="col-6">
				<i class="bi bi-geo-alt">&nbsp;<b>FAQ</b>&nbsp;자주묻는질문에 대한 답변을 정리해 놓았습니다. 사이트 이용시 궁금한 사항 참고하세요.</i>
			</div>
			<div class="col"></div>
		</div>
	
		<div class="row">
			<div class="col-7"></div>
			<div class="col"><!-- 타이핑 박스 -->
				<input type="text">
			</div>
			<div class="col"><!-- 검색버튼 -->
				<input type="submit" value="검색">		
			</div>
			<div class="col-2"></div>
		</div>
	
		<div class="row">
			<div class="col"></div>
			<div class="col-6">
				<div class="accordion accordion-flush" id="accordionFlushExample">
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingOne">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
				        		<b>Q&#46;</b>&nbsp;
				        		윈도우즈 10 사용 중인데 공공 I-PIN으로 로그인이 되지 않습니다.
				      		</button>
				    	</h2>
				    	<div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
								<b>A&#46;</b>&nbsp;
					      		익스플로러 -> 인터넷옵션 -> 신뢰할 수 있는 사이트에 '*.scourt.go.kr'가 있는 경우
								'*.g-pin.go.kr'도 반드시 함께 포함되어 있어야 합니다.
							</div>
				  		</div>
					</div>
				 
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingTwo">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        		<b>Q&#46;</b>&nbsp;
				        		페이지가 정상적으로 보이지 않습니다.
				      		</button>
				    	</h2>
				    	<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		GPKI용 인증서가 고도화됨에 따라 일부 클라이언트 환경에서 2048bit 보안서버(SSL) 인증서가 적용된 페이지가 정상적으로 표출되지 않을 수 있습니다.
								<br><br>
								이 경우 아래 내용을 참고하시어 루트인증서를 업데이트하시기 바랍니다.
								<br><br>
								가) Windows XP<br>
								  1) Windows XP SP3 여부 확인<br>
								    탐색기 > 내컴퓨터 > 속성 > Windows 버전 확인<br>
								  2) Windows XP SP3 아닌 경우 <br>
								   - 설치이전에 Windows XP SP2 또는 Windows XP SP1이 설치되어 있어야 함<br>
								   - Windows XP SP3 내려받은 후 루트인증서 설치<br>
								     Windows XP SP3 내려받기 경로 <br>
								     (http://www.microsoft.com/ko-kr/download/details.aspx?id=24)<br>
								  - 루트인증서 업데이트<br>
								     Windows 버전에 맞는 루트인증서 설치 <br>
								     (http://catalog.update.microsoft.com/v7/site/Search.aspx?q=root%20certificate)<br>
								  3) Windows XP SP3 인 경우 <br>
								   - 루트인증서 업데이트<br>
								     Windows 버전에 맞는 루트인증서 설치<br>
								     (http://catalog.update.microsoft.com/v7/site/Search.aspx?q=root%20certificate)<br>
								 <br>
								(나) Windows 7<br>
								  - 루트인증서 업데이트<br>
								   Windows 버전에 맞는 루트인증서 설치<br>
								   (http://catalog.update.microsoft.com/v7/site/Search.aspx?q=root%20certificate)<br>
								 <br>
								(다) Windows 버전 별 루트인증서<br>
								  - 행정전자서명 인증관리센터에서 버전별 루트인증서 다운로드가 가능합니다.<br>
								    (http://www.gpki.go.kr/pds/ManualSearchAction.action?dto.bbs_seq=3&pdsCombo=1 접속 후 <br>
								     "Windows[2012년 4월]용 루트 인증서 업데이트 안내" 게시글 첨부파일 다운로드)
							</div>
				  		</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingThree">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
				        		<b>Q&#46;</b>&nbsp;
				        		신청인 기본정보인 주민등록번호 옆의 ‘감정인활동정보’는 무엇인가요?
				      		</button>
				    	</h2>
				    	<div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		‘감정인활동정보’는 신청인이 법원에서 활동한 이력을 보여주는 것으로, 이 화면에서 사무실정보 등 추가정보를 입력할 수 있습니다.
							</div>
				  		</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingFour">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
				        		<b>Q&#46;</b>&nbsp;
				        		감정분야를 공사비등-토목으로 선택했는데 마이페이지에서 공사비등(건축)으로 표시됩니다.
				      		</button>
				    	</h2>
				    	<div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		마이페이지에서는 감정인 세부구분과 관계없이 공사비등(건축)으로 표시됩니다.
							</div>
				  		</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingFive">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
				        		<b>Q&#46;</b>&nbsp;
				        		첨부파일은 어떤 포맷으로 올려야 하나요?
				      		</button>
				    	</h2>
				    	<div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		확장자가 PDF, BMP, JPG, GIF, TIFF, PNG 인 파일만 첨부할 수 있습니다.
							</div>
				  		</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingSix">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
				        		<b>Q&#46;</b>&nbsp;
				        		감정 분야를 잘못 선택하고 신청서를 제출했습니다. 어떻게 수정할 수 있나요?
				      		</button>
				    	</h2>
				    	<div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		감정 분야는 수정할 수 없습니다. 나의 등재신청 내역에서 신청 내역을 삭제하신 후 다시 신청서를 작성해 주시기 바랍니다.
							</div>
				  		</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingSeven">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven" aria-expanded="false" aria-controls="flush-collapseSeven">
				        		<b>Q&#46;</b>&nbsp;
				        		개인 증빙서류 중 학력정보, 경력정보, 자격증정보 첨부파일을 수정할 수 없나요?
				      		</button>
				    	</h2>
				    	<div id="flush-collapseSeven" class="accordion-collapse collapse" aria-labelledby="flush-headingSeven" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		감정인 등재신청 단계 중 ‘STEP 5 증빙서류 첨부‘에서는 학력정보, 경력정보, 자격증정보 첨부파일을 수정할 수 없습니다. ’STEP2 학력정보‘, ’STEP3 경력정보‘, ’STEP4 자격증정보‘에서 각각 관련 파일을 첨부하시기 바랍니다.
							</div>
				  		</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingEight">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEight" aria-expanded="false" aria-controls="flush-collapseEight">
				        		<b>Q&#46;</b>&nbsp;
				        		보완요청 메일을 받았습니다. 어떻게 해야 하나요?
				      		</button>
				    	</h2>
				    	<div id="flush-collapseEight" class="accordion-collapse collapse" aria-labelledby="flush-headingEight" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		마이페이지(My Page)에 들어가셔서 보완 대상을 수정하신 후 신청서를 다시 제출해 주세요.. 제출하신 신청 자료에 보완할 사항이 있으면 등록하신 메일과 마이페이지로 보완요청이 전달되므로 자주 확인하시기 바랍니다.
							</div>
				  		</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingNine">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseNine" aria-expanded="false" aria-controls="flush-collapseNine">
				        		<b>Q&#46;</b>&nbsp;
				        		신청서 처리단계가 ‘접수완료’로 변경되어 신청서를 수정할 수 없습니다.
				      		</button>
				    	</h2>
				    	<div id="flush-collapseNine" class="accordion-collapse collapse" aria-labelledby="flush-headingNine" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
								<b>A&#46;</b>&nbsp;
								감정인 등재 신청기간이 만료되지 않았다면, 법원행정처 사법지원실 담당자(전화:02-3480-1268 팩스:02-3476-8048)에게 문의하시기 바랍니다.							</div>
				  		</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingTen">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTen" aria-expanded="false" aria-controls="flush-collapseTen">
				        		<b>Q&#46;</b>&nbsp;
				        		마이페이지에서 조회해 보니 현재 ‘접수’ 단계로 되어 있습니다. 접수된 것이 맞나요?
				      		</button>
				    	</h2>
				    	<div id="flush-collapseTen" class="accordion-collapse collapse" aria-labelledby="flush-headingTen" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		신청서가 제출되면 ‘접수’ 단계에 있다가 감정인 등재 신청 접수 담당자의 확인을 거쳐 ‘접수완료’ 단계로 변경됩니다.
					      	</div>
				  		</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingEleven">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEleven" aria-expanded="false" aria-controls="flush-collapseEleven">
				        		<b>Q&#46;</b>&nbsp;
				        		필수로 입력해야 하는 첨부파일이 없는 경우 어떻게 해야 하나요?
				      		</button>
				    	</h2>
				    	<div id="flush-collapseEleven" class="accordion-collapse collapse" aria-labelledby="flush-headingEleven" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		복사용지에 첨부할 자료 이름과 해당 자료가 없다고 기재하고 스캔하여 첨부하시기 바랍니다.
							</div>
				  		</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingTwelve">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwelve" aria-expanded="false" aria-controls="flush-collapseTwelve">
				        		<b>Q&#46;</b>&nbsp;
				        		추가 첨부파일이 많아서 기타서류에 모두 올릴 수 없습니다.
				      		</button>
				    	</h2>
				    	<div id="flush-collapseTwelve" class="accordion-collapse collapse" aria-labelledby="flush-headingTwelve" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		관련 자료와 함께 한 개의 파일로 만들어 첨부하시면 됩니다. (이때, 시스템에 업로드 할 수 있는 최대 파일 사이즈인 10메가를 초과하지 않도록 주의하시기 바랍니다.)
							</div>
				  		</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingThirteen">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThirteen" aria-expanded="false" aria-controls="flush-collapseThirteen">
				        		<b>Q&#46;</b>&nbsp;
				        		경력증명서 파일 사이즈가 10메가를 초과하여 첨부할 수 없습니다.
				      		</button>
				    	</h2>
				    	<div id="flush-collapseThirteen" class="accordion-collapse collapse" aria-labelledby="flush-headingThirteen" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		본 사이트에 첨부할 수 있는 최대 파일 크기가 10메가입니다. 업로드하려는 파일 크기가 10메가를 초과하는 경우 파일 크기를 줄여 올리거나 저해상도로 다시 스캔하여 첨부하여 주시기 바랍니다.
							</div>
				  		</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingFourteen">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFourteen" aria-expanded="false" aria-controls="flush-collapseFourteen">
				        		<b>Q&#46;</b>&nbsp;
				        		첨부파일의 한글 파일명이 깨져서 보입니다.
				      		</button>
				    	</h2>
				    	<div id="flush-collapseFourteen" class="accordion-collapse collapse" aria-labelledby="flush-headingFourteen" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		본 사이트는 인터넷 익스플로러 8버전에 최적화 되어 있습니다. 감정인 등재 신청 관련 제출서류를 파일형태로 첨부할 때에 반드시 인터넷 익스플로러 8버전이 설치된 PC에서 작업하시기 바랍니다.
							</div>
				  		</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingFifteen">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFifteen" aria-expanded="false" aria-controls="flush-collapseFifteen">
				        		<b>Q&#46;</b>&nbsp;
				        		온라인감정인신청 홈페이지는 Internet Explorer 6 버전에서 작동되지 않나요?
				      		</button>
				    	</h2>
				    	<div id="flush-collapseFifteen" class="accordion-collapse collapse" aria-labelledby="flush-headingFifteen" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		안녕하세요
								<br><br>
								온라인감정인 신청 홈페이지는 화면 처리 방식을 최신기술을 사용하여 구현되어  Internet Explorer 6 버전에서 작동이 되지 않고 있습니다.
								<br><br>
								Internet Explorer 6 버전 사용자는 Internet Explorer 8 버전으로 업그레이드하여 주시기 바랍니다.
								<br><br>
								감사합니다.
							</div>
				  		</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingSixteen">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSixteen" aria-expanded="false" aria-controls="flush-collapseSixteen">
				        		<b>Q&#46;</b>&nbsp;
				        		일반감정인 등재신청시 증빙서류는 어떻게 첨부하나요?
				      		</button>
				    	</h2>
				    	<div id="flush-collapseSixteen" class="accordion-collapse collapse" aria-labelledby="flush-headingSixteen" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body" style="background:#f8f9fa">
					      		<b>A&#46;</b>&nbsp;
					      		안녕하세요.
								<br><br>
								일반감정인 등재신청시 증빙서류는 스캐너로 스캔하여 PDF, GIF, JPG, TIFF, PNG 파일로 첨부하여 주십시오. 
								<br><br>
								증빙서류는 한번에 한 파일만 첨부 가능하므로 장수가 많을 경우 스캐너 기능 및 스캐너에서 제공하는 소프트웨어를 활용하여 PDF 파일로 변환하여 첨부하여 주십시오. 
								<br><br>
								한번에 첨부할 파일 사이즈는 10Mbyte 이하이므로 사이즈가 큰 경우 이미지툴을 이용하여 사이즈를 10Mbyte 이하로 줄여서 첨부하여 주십시오. 
								<br><br>
								기타 일반감정인 등재신청 항목 및 증빙서류 종류는 대법원 온라인감정인신청 홈페이지 - 감정인신청안내 - 감정인신청절차 안내 페이지를 참조하여 주세요. 
								<br><br>
								감사합니다.
							</div>
				  		</div>
					</div>	
			</div>
		</div>
		<div class="col"></div>
	</div>
	
	
</div>

<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>