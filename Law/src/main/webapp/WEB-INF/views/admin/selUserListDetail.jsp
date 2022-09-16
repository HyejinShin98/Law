<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<title>1차 신청 </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/userDetailList.js"></script>
<script type="text/javascript">
var userNo = ${map.APLCN_DTLS_PROPER_NUM};

function tableNineInfo(){
    var xhr = new XMLHttpRequest(); //AJAX 객체 생성
		xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
				var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)

                var commentListBox = document.getElementById("tableNineInfo");
				commentListBox.innerHTML = "";

                var rowBox = document.createElement("div");
                rowBox.classList.add("row");


                var nabBox = document.createElement("div");
                nabBox.classList.add("row");
                nabBox.classList.add("text-center");
                nabBox.classList.add("my-5");
                nabBox.classList.add("mx-0");
                nabBox.classList.add("mb-4");
                rowBox.appendChild(nabBox);

                //1
                var nabColBox1 = document.createElement("div");
                nabColBox1.classList.add("col-2");
                nabColBox1.classList.add("py-3");
                nabColBox1.classList.add("border");
                nabColBox1.classList.add("bg-light");
                nabBox.appendChild(nabColBox1);

                var nabColBox1A = document.createElement("a");
                nabColBox1A.setAttribute("href", "#");
                nabColBox1A.classList.add("text-black");
                nabColBox1A.classList.add("text-decoration-none");
                nabColBox1A.innerText="테이블1페이지";
                nabColBox1.appendChild(nabColBox1A);


                //2

                var nabColBox2 = document.createElement("div");
                nabColBox2.classList.add("col-2");
                nabColBox2.classList.add("py-3");
                nabColBox2.classList.add("border");
                nabColBox2.classList.add("border-start-0");
                nabColBox2.classList.add("bg-light");
                nabBox.appendChild(nabColBox2);

                var nabColBox2A = document.createElement("a");
                nabColBox2A.setAttribute("href", "#");
                nabColBox2A.classList.add("text-black");
                nabColBox2A.classList.add("text-decoration-none");
                nabColBox2A.innerText="테이블5번 출력";
                nabColBox2.appendChild(nabColBox2A);
                

				//3번
               
                var nabColBox3 = document.createElement("div");
                nabColBox3.classList.add("col-2");
                nabColBox3.classList.add("py-3");
                nabColBox3.classList.add("border");
                nabColBox3.classList.add("border-start-0");
                nabColBox3.classList.add("bg-light");
                nabBox.appendChild(nabColBox3);

                var nabColBox3A = document.createElement("a");
                nabColBox3A.setAttribute("href", "#");      
                nabColBox3A.classList.add("text-black");
                nabColBox3A.classList.add("text-decoration-none");
                nabColBox3A.innerText="테이블6 출력";
                nabColBox3.appendChild(nabColBox3A);

                //4번
                
                var nabColBox4 = document.createElement("div");
                nabColBox4.classList.add("col-2");
                nabColBox4.classList.add("py-3");
                nabColBox4.classList.add("border");
                nabColBox4.classList.add("border-start-0");
                nabColBox4.classList.add("bg-light");
                nabBox.appendChild(nabColBox4);

                var nabColBox4A = document.createElement("a");
                nabColBox4A.setAttribute("href", "#");      
                nabColBox4A.classList.add("text-black");
                nabColBox4A.classList.add("text-decoration-none");
                nabColBox4A.innerText="테이블7 출력";
                nabColBox4.appendChild(nabColBox4A);


                //5번

                var nabColBox5 = document.createElement("div");
                nabColBox5.classList.add("col-2");
                nabColBox5.classList.add("py-3");
                nabColBox5.classList.add("border");
                nabColBox5.classList.add("border-start-0");
                nabColBox5.classList.add("bg-light");
                nabBox.appendChild(nabColBox5);

                var nabColBox5A = document.createElement("a");
                nabColBox5A.setAttribute("href", "#");      
                nabColBox5A.classList.add("text-black");
                nabColBox5A.classList.add("text-decoration-none");
                nabColBox5A.innerText="테이블8 출력";
                nabColBox5.appendChild(nabColBox5A);
                


                //6번
                
                var nabColBox6 = document.createElement("div");
                nabColBox6.classList.add("col-2");
                nabColBox6.classList.add("py-3");
                nabColBox6.classList.add("border");
                nabColBox6.classList.add("border-start-0");
                nabColBox6.classList.add("border-bottom-0");
                nabColBox6.classList.add("text-primary");
                nabColBox6.classList.add("text-opacity-50");
                nabColBox6.classList.add("fw-bold");
                nabColBox6.innerText="테이블9 ";
                nabBox.appendChild(nabColBox6);


                //네비끝

                
                var subNab1 = document.createElement("div");
                subNab1.classList.add("row");
                subNab1.classList.add("mx-0");
                subNab1.classList.add("border-bottom");
                subNab1.classList.add("pb-4");
                rowBox.appendChild(subNab1);

                var subNab1Span = document.createElement("span");
                subNab1Span.innerText="기본정보";
                subNab1.appendChild(subNab1Span);

                var subNab1SpanFromI = document.createElement("i");
                subNab1SpanFromI.classList.add("bi");
                subNab1SpanFromI.classList.add("bi-circle-fill");
                subNab1Span.appendChild(subNab1SpanFromI);

                //기본정보 끝


                //table시작

                var tableRow = document.createElement("div");
                tableRow.classList.add("row");
                rowBox.appendChild(tableRow);

                var table = document.createElement("table");
                table.classList.add("table");
                table.classList.add("table-bordered");
                tableRow.appendChild(table);

                //여기까진 같음
                
                var colGroup = document.createElement("colgroup");
                table.appendChild(colGroup);

                var colGroupOne = document.createElement("col");
                colGroupOne.setAttribute("width", "25%");
                colGroup.appendChild(colGroupOne);

                var colGroupTwo = document.createElement("col");
                colGroupTwo.setAttribute("width", "25%");
                colGroup.appendChild(colGroupTwo);

                var colGroupThree = document.createElement("col");
                colGroupThree.setAttribute("width", "50%");
                colGroup.appendChild(colGroupThree);

               

                var thead = document.createElement("thead");
                table.appendChild(thead);

                var theadTr = document.createElement("tr");
                theadTr.classList.add("text-center");
                thead.appendChild(theadTr);

                var theadTrTh1 = document.createElement("th");
                theadTrTh1.setAttribute("scope", "col");
                theadTrTh1.classList.add("table-light");
                theadTrTh1.innerText="첨부서류 분류 코드";
                theadTr.appendChild(theadTrTh1);

                var theadTrTh2 = document.createElement("th");
                theadTrTh2.setAttribute("scope", "col");
                theadTrTh2.classList.add("table-light");
                theadTrTh2.innerText="첨부 서류 타입";
                theadTr.appendChild(theadTrTh2);

                var theadTrTh3 = document.createElement("th");
                theadTrTh3.setAttribute("scope", "col");
                theadTrTh3.classList.add("table-light");
                theadTrTh3.innerText="파일 이름";
                theadTr.appendChild(theadTrTh3);






                var tbody = document.createElement("tbody");
                table.appendChild(tbody);
				
                
               for(dataList of jsonObj){
             
                
                var bodyTr1 = document.createElement("tr");
                tbody.appendChild(bodyTr1);


                var bodyTr1Td1 = document.createElement("td");
                bodyTr1Td1.classList.add("text-center");
                bodyTr1Td1.innerText= dataList.file_type;
                bodyTr1.appendChild(bodyTr1Td1);

                var bodyTr1Td2 = document.createElement("td");
                bodyTr1Td2.classList.add("text-center");
                bodyTr1Td2.innerText = dataList.file_code;
                bodyTr1.appendChild(bodyTr1Td2);

                var bodyTr1Td3 = document.createElement("td");
                bodyTr1.appendChild(bodyTr1Td3);
                
                var bodyTr1Td3A = document.createElement("a");
                bodyTr1Td3A.classList.add("text-center");
                bodyTr1Td3A.setAttribute("href", "#");
                bodyTr1Td3A.classList.add("text-decoration-none");
                bodyTr1Td3A.innerText = dataList.original_file_name;
                bodyTr1Td3.appendChild(bodyTr1Td3A);

               }
                
                commentListBox.appendChild(rowBox);
                
                
            }
    }
        xhr.open("get" , "fileList?aplcn_dtls_proper_num=" + userNo); //리퀘스트 세팅..
			//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
		xhr.send(); //AJAX로 리퀘스트함..	
}





window.addEventListener("DOMContentLoaded" , function (){
	tableOne();
	tableFiveInfo();
	tableSixInfo();
	tableSevenInfo();
	tableEightInfo();
	tableNineInfo();
});
</script>
</head>
<body>

<h2>시작</h2>


 		<!-- 실험용 -->
 		<div class="row">
			<div id="tableOne" class="col">왜안됨</div>
		</div> 
 		
 		<div class="row">
			<div id="tableFiveInfo" class="col">왜안됨</div>
		</div> 
		<div class="row">
			<div id="tableSixInfo" class="col">왜안됨</div>
		</div> 
		
		<div class="row">
			<div id="tableSevenInfo" class="col">왜안됨</div>
		</div> 
		
		<div class="row">
			<div id="tableEightInfo" class="col">왜안됨</div>
		</div>
		
		<div class="row">
			<div id="tableNineInfo" class="col">왜안됨</div>
		</div>
 		<!-- 실험끝 -->
 <h2>끝</h2>		
		${map.USER_BANK_ACCOUNT} 이건되네
		
		
		<c:forEach items="${fileList}" var="data">
			<a href="fileDownLoadProcess?aplcn_dtls_proper_num=${data.aplcn_dtls_proper_num}&aplcn_atch_file_proper_num=${data.aplcn_atch_file_proper_num}">
			${data.original_file_name}<br>
			</a>
			이론상 됨 ${data.aplcn_atch_file_proper_num }<br>
			${user_age}<br>
			${user_email}<br>
			${user_email}<br>
			
		</c:forEach>
		
			<a href="../admin/evaluationProcess?aplcn_dtls_proper_num=${map.APLCN_DTLS_PROPER_NUM}" class="text-decoration-none">1차 서류 접수</a><br>
			<a href="../admin/companionProcess?aplcn_dtls_proper_num=${map.APLCN_DTLS_PROPER_NUM}" class="text-decoration-none">1차 서류 반려</a>
		여긴 왜 안나옴
		
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>