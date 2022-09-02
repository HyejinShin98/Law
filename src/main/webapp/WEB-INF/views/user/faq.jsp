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
		<div class="col-3">
            <div class="list-group list-group-flush">
                <a href="../user/myPage" class="list-group-item list-group-item-action">감정인 등재공고</a>
                <a href="#" class="list-group-item list-group-item-action">공지사항</a>
                <a href="#" class="list-group-item list-group-item-action">FAQ(자주묻는질문)</a>
            </div>
        </div>
		<div class="col">홈 > 공지사항 > <span>FAQ</span></div>
		<div class="col"><span>FAQ</span></div>
	
	
	
		<div class="accordion accordion-flush" id="accordionFlushExample">
  			<div class="accordion-item">
	    			<h2 class="accordion-header" id="faq1">
		      		<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq1" aria-expanded="false" aria-controls="faq1">
		        		윈도우즈 10 사용 중인데 공공 I-PIN으로 로그인이 되지 않습니다.
		      		</button>
	    			</h2>
	    		<div id="faq1" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
	      			<div class="accordion-body">
	      			익스플로러 -> 인터넷옵션 -> 신뢰할 수 있는 사이트에 '*.scourt.go.kr'가 있는 경우'<br>
	      			*.g-pin.go.kr'도 반드시 함께 포함되어 있어야 합니다.
	      			</div>
	    		</div>
  			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="faq2">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq2" aria-expanded="false" aria-controls="faq2">
				        페이지가 정상적으로 보이지 않습니다.
					</button>
				</h2>
				<div id="faq2" class="accordion-collapse collapse" aria-labelledby="faq2" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
					GPKI용 인증서가 고도화됨에 따라 일부 클라이언트 환경에서 2048bit 보안서버(SSL) 인증서가 적용된 페이지가 정상적으로 표출되지 않을 수 있습니다.<br>
					이 경우 아래 내용을 참고하시어 루트인증서를 업데이트하시기 바랍니다.
					<br>
					<br>
					가) Windows XP<br>
					&nbsp;1) Windows XP SP3 여부 확인<br>
					&nbsp;&nbsp;탐색기 > 내컴퓨터 > 속성 > Windows 버전 확인<br>
					&nbsp;2) Windows XP SP3 아닌 경우<br>
					&nbsp;&nbsp;- 설치이전에 Windows XP SP2 또는 Windows XP SP1이 설치되어 있어야 함<br>
					&nbsp;&nbsp;- Windows XP SP3 내려받은 후 루트인증서 설치<br>
					&nbsp;&nbsp;Windows XP SP3 내려받기 경로 <br>
					&nbsp;&nbsp;(http://www.microsoft.com/ko-kr/download/details.aspx?id=24)<br>
					&nbsp;&nbsp;- 루트인증서 업데이트<br>
					&nbsp;&nbsp;Windows 버전에 맞는 루트인증서 설치 <br>
					&nbsp;&nbsp;(http://catalog.update.microsoft.com/v7/site/Search.aspx?q=root%20certificate)<br>
					&nbsp;3) Windows XP SP3 인 경우 <br>
					&nbsp;&nbsp;- 루트인증서 업데이트<br>
					&nbsp;&nbsp;Windows 버전에 맞는 루트인증서 설치<br>
					&nbsp;&nbsp;(http://catalog.update.microsoft.com/v7/site/Search.aspx?q=root%20certificate)<br>
					<br>
					<br>
					(나) Windows 7<br>
					&nbsp;&nbsp;- 루트인증서 업데이트<br>
					&nbsp;&nbsp;Windows 버전에 맞는 루트인증서 설치<br>
					&nbsp;&nbsp;http://catalog.update.microsoft.com/v7/site/Search.aspx?q=root%20certificate)<br>
					<br>
					<br>
					(다) Windows 버전 별 루트인증서<br>
					&nbsp;&nbsp;- 행정전자서명 인증관리센터에서 버전별 루트인증서 다운로드가 가능합니다.<br>
					&nbsp;&nbsp;(http://www.gpki.go.kr/pds/ManualSearchAction.action?dto.bbs_seq=3&pdsCombo=1 접속 후<br> 
					&nbsp;&nbsp;"Windows[2012년 4월]용 루트 인증서 업데이트 안내" 게시글 첨부파일 다운로드)
					</div>
			    </div>
			</div>
			
			<div class="accordion-item">
				<h2 class="accordion-header" id="faq3">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq3" aria-expanded="false" aria-controls="faq3">
				        신청인 기본정보인 주민등록번호 옆의 ‘감정인활동정보’는 무엇인가요?
					</button>
				</h2>
				<div id="faq3" class="accordion-collapse collapse" aria-labelledby="faq3" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						‘감정인활동정보’는 신청인이 법원에서 활동한 이력을 보여주는 것으로, 이 화면에서 사무실정보 등 추가정보를 입력할 수 있습니다.
					</div>
			    </div>
			</div>
			
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        감정분야를 공사비등-토목으로 선택했는데 마이페이지에서 공사비등(건축)으로 표시됩니다.
					</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						마이페이지에서는 감정인 세부구분과 관계없이 공사비등(건축)으로 표시됩니다.
					</div>
			    </div>
			</div>
			
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        첨부파일은 어떤 포맷으로 올려야 하나요?
					</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						확장자가 PDF, BMP, JPG, GIF, TIFF, PNG 인 파일만 첨부할 수 있습니다.
					</div>
			    </div>
			</div>

			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				       감정 분야를 잘못 선택하고 신청서를 제출했습니다. 어떻게 수정할 수 있나요?
					</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						감정 분야는 수정할 수 없습니다. 나의 등재신청 내역에서 신청 내역을 삭제하신 후 다시 신청서를 작성해 주시기 바랍니다.
					</div>
			    </div>
			</div>
			
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        개인 증빙서류 중 학력정보, 경력정보, 자격증정보 첨부파일을 수정할 수 없나요?
					</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						감정인 등재신청 단계 중 ‘STEP 5 증빙서류 첨부‘에서는 학력정보, 경력정보, 자격증정보 첨부파일을 수정할 수 없습니다. ’STEP2 학력정보‘, ’STEP3 경력정보‘, ’STEP4 자격증정보‘에서 각각 관련 파일을 첨부하시기 바랍니다.
					</div>
			    </div>
			</div>
			
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        보완요청 메일을 받았습니다. 어떻게 해야 하나요?
					</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						마이페이지(My Page)에 들어가셔서 보완 대상을 수정하신 후 신청서를 다시 제출해 주세요.. 제출하신 신청 자료에 보완할 사항이 있으면 등록하신 메일과 마이페이지로 보완요청이 전달되므로 자주 확인하시기 바랍니다.
					</div>
			    </div>
			</div>

			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        신청서 처리단계가 ‘접수완료’로 변경되어 신청서를 수정할 수 없습니다.
					</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						감정인 등재 신청기간이 만료되지 않았다면, 법원행정처 사법지원실 담당자(전화:02-3480-1268 팩스:02-3476-8048)에게 문의하시기 바랍니다.
					</div>
			    </div>
			</div>

			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        마이페이지에서 조회해 보니 현재 ‘접수’ 단계로 되어 있습니다. 접수된 것이 맞나요?
					</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						신청서가 제출되면 ‘접수’ 단계에 있다가 감정인 등재 신청 접수 담당자의 확인을 거쳐 ‘접수완료’ 단계로 변경됩니다.
					</div>
			    </div>
			</div>

			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        필수로 입력해야 하는 첨부파일이 없는 경우 어떻게 해야 하나요?
					</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						복사용지에 첨부할 자료 이름과 해당 자료가 없다고 기재하고 스캔하여 첨부하시기 바랍니다.
					</div>
			    </div>
			</div>
			
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        추가 첨부파일이 많아서 기타서류에 모두 올릴 수 없습니다.
					</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						관련 자료와 함께 한 개의 파일로 만들어 첨부하시면 됩니다. (이때, 시스템에 업로드 할 수 있는 최대 파일 사이즈인 10메가를 초과하지 않도록 주의하시기 바랍니다.)
					</div>
			    </div>
			</div>
			
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        경력증명서 파일 사이즈가 10메가를 초과하여 첨부할 수 없습니다.
					</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						본 사이트에 첨부할 수 있는 최대 파일 크기가 10메가입니다. 업로드하려는 파일 크기가 10메가를 초과하는 경우 파일 크기를 줄여 올리거나 저해상도로 다시 스캔하여 첨부하여 주시기 바랍니다.
					</div>
			    </div>
			</div>			

			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        첨부파일의 한글 파일명이 깨져서 보입니다.
					</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						본 사이트는 인터넷 익스플로러 8버전에 최적화 되어 있습니다. 감정인 등재 신청 관련 제출서류를 파일형태로 첨부할 때에 반드시 인터넷 익스플로러 8버전이 설치된 PC에서 작업하시기 바랍니다.
					</div>
			    </div>
			</div>	

			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        온라인감정인신청 홈페이지는 Internet Explorer 6 버전에서 작동되지 않나요?
					</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						안녕하세요 
						<br>
						<br>
						온라인감정인 신청 홈페이지는 화면 처리 방식을 최신기술을 사용하여 구현되어  Internet Explorer 6 버전에서 작동이 되지 않고 있습니다.
						<br>
						<br>
						Internet Explorer 6 버전 사용자는 Internet Explorer 8 버전으로 업그레이드하여 주시기 바랍니다.
						<br>
						<br>
						감사합니다.
					</div>
			    </div>
			</div>	
			
		</div>	
	</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>