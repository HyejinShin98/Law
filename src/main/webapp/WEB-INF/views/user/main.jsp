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

<title>Insert title here</title>
</head>
<body>
 		<jsp:include page="../common/header.jsp"></jsp:include>
       <div class="col container-fluid" style="width : 1200px;">
           <div class="row"><img src="../resources/img/그림1.PNG"></div>
           <div class="row mt-4 mb-2">
               <div class="col-6 border-bottom" style="font-weight: bold;">감정분야별 등재신청 바로가기</div>
               <div class="col-6 border-bottom">
                   <div class="row">
                        <div class="col" style="font-weight: bold;">공지사항</div>
                        <div class="col text-end"><a href=""></a>더보기</div>
                   </div>
               </div>
           </div>
           <div class="row">
                <div class="col">
                    <div class="row text-center">
                        <div class="col px-0 border" style="width: 100%; height: 100%;">
                            <a href="#">
                                <div class="row"><img src="../resources/img/캡처2.PNG"></div>
                                <div class="row " style="place-content: center;">측량 등 <br>감정인</div>
                            </a>
                        </div>
                        <div class="col px-0 border" style="width: 100%; height: 100%;">
                            <a href="#">
                                <div class="row"><img src="../resources/img/캡처2.PNG"></div>
                                <div class="row " style="place-content: center;">공사비 등<br>감정인</div>
                            </a>
                        </div>
                        <div class="col px-0 border" style="width: 100%; height: 100%;">
                            <a href="#">
                                <div class="row"><img src="../resources/img/캡처2.PNG"></div>
                                <div class="row " style="place-content: center;">문서/인영/필적 <br>감정인</div>
                            </a>
                        </div>
                        <div class="col px-0 border" style="width: 100%; height: 100%;">
                            <a href="#">
                                <div class="row"><img src="../resources/img/캡처2.PNG"></div>
                                <div class="row " style="place-content: center;">신체/진료기록 <br>감정인</div>
                            </a>
                        </div>
                    </div>
                   
                </div>
                <div class="col ms-3">
                    <div class="row"> 
                        <div class="col">● 공지사항 리스트 출력</div>
                        <div class="col text-end">2020-20-20</div>
                    </div>
                    <div class="row"> 
                        <div class="col">● 공지사항 리스트 출력</div>
                        <div class="col text-end">2020-20-20</div>
                    </div>
                    <div class="row"> 
                        <div class="col">● 공지사항 리스트 출력</div>
                        <div class="col text-end">2020-20-20</div>
                    </div>
                    <div class="row"> 
                        <div class="col">● 공지사항 리스트 출력</div>
                        <div class="col text-end">2020-20-20</div>
                    </div>
                </div>
           </div>
           <jsp:include page="../common/footer.jsp"></jsp:include>
       </div>
       
       
     
       
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>