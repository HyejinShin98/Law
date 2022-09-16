function tableOne(){
    var xhr = new XMLHttpRequest(); //AJAX 객체 생성
		xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
				
			
				
				
				var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)

				var commentListBox = document.getElementById("tableOne");
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

                var nabColBox1 = document.createElement("div");
                nabColBox1.classList.add("col-2");
                nabColBox1.classList.add("py-3");
                nabColBox1.classList.add("border");
                nabColBox1.classList.add("border-end-0");
                nabColBox1.classList.add("border-bottom-0");
                nabColBox1.classList.add("text-primary");
                nabColBox1.classList.add("text-opacity-50");
                nabColBox1.classList.add("fw-bold");
                nabColBox1.innerText = "테이블1 출력";
                nabBox.appendChild(nabColBox1);

                var nabColBox2 = document.createElement("div");
                nabColBox2.classList.add("col-2");
                nabColBox2.classList.add("py-3");
                nabColBox2.classList.add("border");
                nabColBox2.classList.add("bg-light");
                nabBox.appendChild(nabColBox2);
                
                var nabcolBox2A = document.createElement("a");
                nabcolBox2A.setAttribute("href", "#");     
                nabcolBox2A.classList.add("text-black");
                nabcolBox2A.classList.add("text-decoration-none");
                nabcolBox2A.innerText="테이블2 출력";
                nabColBox2.appendChild(nabcolBox2A);

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
                nabColBox3A.innerText="테이블3 출력";
                nabColBox3.appendChild(nabColBox3A);

                //4번
                var nabColBox4 = document.createElement("div");
                nabColBox4.classList.add("col-2");
                nabColBox4.classList.add("py-3");
                nabColBox4.classList.add("border");
                nabColBox4.classList.add("bg-light");
                nabBox.appendChild(nabColBox4);

                var nabColBox4A = document.createElement("a");
                nabColBox4A.setAttribute("href", "#");      
                nabColBox4A.classList.add("text-black");
                nabColBox4A.classList.add("text-decoration-none");
                nabColBox4A.innerText="테이블4 출력";
                nabColBox4.appendChild(nabColBox4A);

                //5번
                var nabColBox5 = document.createElement("div");
                nabColBox5.classList.add("col-2");
                nabColBox5.classList.add("py-3");
                nabColBox5.classList.add("border");
                nabColBox5.classList.add("bg-light");
                nabBox.appendChild(nabColBox5);

                var nabColBox5A = document.createElement("a");
                nabColBox5A.setAttribute("href", "#");      
                nabColBox5A.classList.add("text-black");
                nabColBox5A.classList.add("text-decoration-none");
                nabColBox5A.innerText="테이블5 출력";
                nabColBox5.appendChild(nabColBox5A);

                //6번
                var nabColBox6 = document.createElement("div");
                nabColBox6.classList.add("col-2");
                nabColBox6.classList.add("py-3");
                nabColBox6.classList.add("border");
                nabColBox6.classList.add("bg-light");
                nabBox.appendChild(nabColBox6);

                var nabColBox6A = document.createElement("a");
                nabColBox6A.setAttribute("href", "#");
                nabColBox6A.classList.add("text-black");
                nabColBox6A.classList.add("text-decoration-none");
                nabColBox6A.innerText="테이블6 출력";
                nabColBox6.appendChild(nabColBox6A);
                
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
                
                var tableRowBox = document.createElement("div");
                tableRowBox.classList.add("row");
                rowBox.appendChild(tableRowBox);

                var tableBox = document.createElement("table");
                tableBox.classList.add("table");
                tableBox.classList.add("table-bordered");
                tableRowBox.appendChild(tableBox);

                var colgp = document.createElement("colgroup");
                tableBox.appendChild(colgp);

                //스코프
                var tableColGroup1 = document.createElement("col");
                tableColGroup1.setAttribute("width", "15%");
                colgp.appendChild(tableColGroup1);
                
                var tableColGroup2 = document.createElement("col");
                tableColGroup2.setAttribute("width", "35%");
                colgp.appendChild(tableColGroup2);

                var tableColGroup3 = document.createElement("col");
                tableColGroup3.setAttribute("width", "15%");
                colgp.appendChild(tableColGroup3);

                var tableColGroup4 = document.createElement("col");
                tableColGroup4.setAttribute("width", "35%");
                colgp.appendChild(tableColGroup4);

                var tableThead = document.createElement("thead");
                tableBox.appendChild(tableThead);

                var threadTr = document.createElement("tr");
                tableThead.appendChild(threadTr);

                var trTh1 = document.createElement("th");
                trTh1.classList.add("table-light");
                trTh1.classList.add("text-center");
                trTh1.innerText="이름";
                threadTr.appendChild(trTh1);

                var trTd1 = document.createElement("td");
                trTd1.innerText= jsonObj.map.USER_NAME;
                threadTr.appendChild(trTd1);

                var trTh2 = document.createElement("th");
                trTh2.classList.add("table-light");
                trTh2.classList.add("text-center");
                trTh2.innerText="나이";
                threadTr.appendChild(trTh2);

                var trTd2 = document.createElement("td");
                trTd2.innerText= jsonObj.map.USER_AGE + "세";
                threadTr.appendChild(trTd2);


                var tableBody = document.createElement("tbody");
                tableBox.appendChild(tableBody);

                var bodyTr1 = document.createElement("tr");
                tableBody.appendChild(bodyTr1);

                var bodyTh1 = document.createElement("th");
                bodyTh1.classList.add("text-center");
                bodyTh1.classList.add("table-light");
                bodyTh1.innerText="이메일";
                bodyTr1.appendChild(bodyTh1);

                var bodyTd1 = document.createElement("td");
                bodyTd1.innerText= jsonObj.map.USER_EMAIL;
                bodyTr1.appendChild(bodyTd1);

                var bodyTh2 = document.createElement("th");
                bodyTh2.classList.add("text-center");
                bodyTh2.classList.add("table-light");
                bodyTh2.innerText="연락처";
                bodyTr1.appendChild(bodyTh2);

                var bodyTd2 = document.createElement("td");
                bodyTd2.innerText=jsonObj.map.USER_PHONE;
                bodyTr1.appendChild(bodyTd2);
                
            
                
                
                var bodyTr2 = document.createElement("tr");
                tableBody.appendChild(bodyTr2);

                var bodyTh3 = document.createElement("th");
                bodyTh3.classList.add("text-center");
                bodyTh3.classList.add("table-light");
                bodyTh3.innerText="직업";
                bodyTr2.appendChild(bodyTh3);

                var bodyTd3 = document.createElement("td");
                bodyTd3.innerText=jsonObj.map.USER_JOB ;
                bodyTr2.appendChild(bodyTd3);

                var bodyTh4 = document.createElement("th");
                bodyTh4.classList.add("text-center");
                bodyTh4.classList.add("table-light");
                bodyTh4.innerText="기본주소";
                bodyTr2.appendChild(bodyTh4);

                var bodyTd4 = document.createElement("td");
                bodyTd4.innerText=jsonObj.map.USER_AR ;
                bodyTr2 .appendChild(bodyTd4);

                var bodyTr3 = document.createElement("tr");
                tableBody.appendChild(bodyTr3);
                
                var bodyTh5 = document.createElement("th");
                bodyTh5.setAttribute("rowspan", "3");
                bodyTh5.setAttribute("scope", "row");
                bodyTh5.classList.add("text-center");
                bodyTh5.classList.add("table-light");
                bodyTh5.setAttribute("style", "line-height:100px");
                // style="line-height:100px" 안됨
                bodyTh5.innerText="주소";
                bodyTr3.appendChild(bodyTh5);

                var bodyTd5 = document.createElement("td");
                bodyTd5.setAttribute("colspan", "3");
                bodyTd5.innerText="우편번호 : " + jsonObj.map.USER_AR_ZONECODE;
                bodyTr3 .appendChild(bodyTd5);



                var bodyTr4 = document.createElement("tr");
                tableBody.appendChild(bodyTr4);

                var bodyTd6 = document.createElement("td");
                bodyTd6.setAttribute("colspan", "3");
                bodyTd6.innerText="지번주소 : " + jsonObj.map.USER_AR_JIBUN;
                bodyTr4 .appendChild(bodyTd6);// 지번주소



                var bodyTr5 = document.createElement("tr");
                tableBody.appendChild(bodyTr5);

                var bodyTd7 = document.createElement("td");
                bodyTd7.setAttribute("colspan", "3");
                bodyTd7.innerText="상세주소 : " + jsonObj.map.USER_AR_DETAIL
                bodyTr5 .appendChild(bodyTd7);// 상세주소



                var bodyTr6 = document.createElement("tr");
                tableBody.appendChild(bodyTr6);

                var bodyTh8 = document.createElement("th");
                bodyTh8.setAttribute("rowspan", "3");
                bodyTh8.setAttribute("scope", "row");
                bodyTh8.classList.add("text-center");
                bodyTh8.classList.add("table-light");
                bodyTh8.setAttribute("style", "line-height:100px");
                bodyTh8.innerText="계좌정보";
                // style="line-height:100px";
                bodyTr6.appendChild(bodyTh8);

                var bodyTd8 = document.createElement("td");
                bodyTd8.setAttribute("colspan", "3");
                bodyTd8.innerText="계좌명 : " + jsonObj.map.USER_BANK_HOLDER;
                bodyTr6 .appendChild(bodyTd8);



                var bodyTr7 = document.createElement("tr");
                tableBody.appendChild(bodyTr7);
                
                var bodyTd9 = document.createElement("td");
                bodyTd9.setAttribute("colspan", "3");
                bodyTd9.innerText="계좌은행 : " + jsonObj.map.USER_BANK;
                bodyTr7 .appendChild(bodyTd9);
                
                var bodyTr8 = document.createElement("tr");
                tableBody.appendChild(bodyTr8);

                var bodyTd10 = document.createElement("td");
                bodyTd10.setAttribute("colspan", "3");
                bodyTd10.innerText="계좌번호 : " + jsonObj.map.USER_BANK_ACCOUNT;
                bodyTr8 .appendChild(bodyTd10);

                commentListBox.appendChild(rowBox);
                
            }
    }
        xhr.open("get" , "selTableOne?aplcn_dtls_proper_num=" + userNo); //리퀘스트 세팅..
		//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
		xhr.send(); //AJAX로 리퀘스트함..		
}

function tableFiveInfo(){
    var xhr = new XMLHttpRequest(); //AJAX 객체 생성
		xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
				var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)

                var commentListBox = document.getElementById("tableFiveInfo");
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
                nabColBox1A.innerText="유저정보페이지 이동";
                nabColBox1.appendChild(nabColBox1A);

                var nabColBox2 = document.createElement("div");
                nabColBox2.classList.add("col-2");
                nabColBox2.classList.add("py-3");
                nabColBox2.classList.add("border");
                nabColBox2.classList.add("border-start-0");
                nabColBox2.classList.add("border-bottom-0");
                nabColBox2.classList.add("text-primary");
                nabColBox2.classList.add("text-opacity-50");
                nabColBox2.classList.add("fw-bold");
                nabColBox2.innerText="유저디테일 페이지";
                nabBox.appendChild(nabColBox2);
                

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
                nabColBox3A.innerText="테이블3 출력";
                nabColBox3.appendChild(nabColBox3A);

                //4번
                var nabColBox4 = document.createElement("div");
                nabColBox4.classList.add("col-2");
                nabColBox4.classList.add("py-3");
                nabColBox4.classList.add("border");
                nabColBox4.classList.add("bg-light");
                nabBox.appendChild(nabColBox4);

                var nabColBox4A = document.createElement("a");
                nabColBox4A.setAttribute("href", "#");      
                nabColBox4A.classList.add("text-black");
                nabColBox4A.classList.add("text-decoration-none");
                nabColBox4A.innerText="테이블4 출력";
                nabColBox4.appendChild(nabColBox4A);

                //5번
                var nabColBox5 = document.createElement("div");
                nabColBox5.classList.add("col-2");
                nabColBox5.classList.add("py-3");
                nabColBox5.classList.add("border");
                nabColBox5.classList.add("bg-light");
                nabBox.appendChild(nabColBox5);

                var nabColBox5A = document.createElement("a");
                nabColBox5A.setAttribute("href", "#");      
                nabColBox5A.classList.add("text-black");
                nabColBox5A.classList.add("text-decoration-none");
                nabColBox5A.innerText="테이블5 출력";
                nabColBox5.appendChild(nabColBox5A);

                //6번
                var nabColBox6 = document.createElement("div");
                nabColBox6.classList.add("col-2");
                nabColBox6.classList.add("py-3");
                nabColBox6.classList.add("border");
                nabColBox6.classList.add("bg-light");
                nabBox.appendChild(nabColBox6);

                var nabColBox6A = document.createElement("a");
                nabColBox6A.setAttribute("href", "#");
                nabColBox6A.classList.add("text-black");
                nabColBox6A.classList.add("text-decoration-none");
                nabColBox6A.innerText="테이블6 출력";
                nabColBox6.appendChild(nabColBox6A);
                
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

                var tableRow = document.createElement("div");
                tableRow.classList.add("row");
                rowBox.appendChild(tableRow);

                var table = document.createElement("table");
                table.classList.add("table");
                table.classList.add("table-bordered");
                tableRow.appendChild(table);
                
                var colGroup = document.createElement("colgroup");
                table.appendChild(colGroup);

                var colGroupOne = document.createElement("col");
                colGroupOne.setAttribute("width", "20%");
                colGroup.appendChild(colGroupOne);

                var colGroupTwo = document.createElement("col");
                colGroupTwo.setAttribute("width", "80%");
                colGroup.appendChild(colGroupTwo);

                // var colGroupThree = document.createElement("col");
                // colGroupThree.setAttribute("width", "15%");
                // colGroup.appendChild(colGroupThree);

                // var colGroupFour = document.createElement("col");
                // colGroupFour.setAttribute("width", "35%");
                // colGroup.appendChild(colGroupFout);

                var tbody = document.createElement("tbody");
                table.appendChild(tbody);

                var bodyTr1 = document.createElement("tr");
                bodyTr1.setAttribute("rowspan", "2");
                bodyTr1.setAttribute("scope", "row");
                bodyTr1.classList.add("text-center");
                bodyTr1.classList.add("border-2");
                bodyTr1.classList.add("style", "line-height:100px");
                tbody.appendChild(bodyTr1);

                var bodyTr1Th1 = document.createElement("th");
                bodyTr1Th1.classList.add("table-light");
                bodyTr1Th1.innerText="소송사건 당사자 경력 내용" + jsonObj.map.LIGTN_CASE_CARER_YN;
                bodyTr1.appendChild(bodyTr1Th1);

                var bodyTr1Td1 = document.createElement("td");
                bodyTr1Td1.innerText=jsonObj.map.LIGTN_CASE_CARER_ETC;
                bodyTr1.appendChild(bodyTr1Td1);

                // var bodyTr1Th2 = document.createElement("th");
                // bodyTr1Th2.classList.add("text-center");
                // bodyTr1Th2.classList.add("table-light");
                // bodyTr1Th2.innerText="보험업계 경력 내용";
                // bodyTr1.appendChild(bodyTr1Th2);

                // var bodyTr1Td2 = document.createElement("td");
                // bodyTr1Td2.innerText = "적으셈";
                // bodyTr1.appendChild(bodyTr1Td2);

                var bodyTr2 = document.createElement("tr");
                bodyTr2.setAttribute("rowspan", "2");
                bodyTr2.setAttribute("scope", "row");
                bodyTr2.setAttribute("style", "line_height:100px");
                bodyTr2.classList.add("text-center");
                bodyTr2.classList.add("border-2");
                tbody.appendChild(bodyTr2);

                var bodyTr2Th1 = document.createElement("th");
                bodyTr2Th1.classList.add("table-light");
                bodyTr2Th1.innerText ="보험업계 경력 내용" + jsonObj.map.INSRN_INDST_CARER_YN;
                bodyTr2.appendChild(bodyTr2Th1);

                var bodyTr2Td1 = document.createElement("td");
                bodyTr2Td1.innerText=jsonObj.map.INSRN_INDST_CARER_ETC;
                bodyTr2.appendChild(bodyTr2Td1);

                var bodyTr3 = document.createElement("tr");
                bodyTr3.setAttribute("rowspan", "2");
                bodyTr3.setAttribute("scope", "row");
                bodyTr3.classList.add("text-center");
                bodyTr3.classList.add("border-2");
                bodyTr3.setAttribute("style", "line-height:100px");
                tbody.appendChild(bodyTr3);

                var bodyTr3Th1 = document.createElement("th");
                bodyTr3Th1.classList.add("table-light");
                bodyTr3Th1.innerText="형사처벌 경력 내용" + jsonObj.map.CRIMINAL_PENALTY_CARER_YN;
                bodyTr3.appendChild(bodyTr3Th1);

                var bodyTr3Td1 = document.createElement("td");
                bodyTr3Td1.innerText= jsonObj.map.CRIMINAL_PENALTY_CARER_ETC;
                bodyTr3.appendChild(bodyTr3Td1);
                
                commentListBox.appendChild(rowBox);

            }
    }
		 xhr.open("get" , "selTableOne?aplcn_dtls_proper_num=" + userNo); //리퀘스트 세팅..
			//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
		xhr.send(); //AJAX로 리퀘스트함..			
}

function tableSixInfo(){
    var xhr = new XMLHttpRequest(); //AJAX 객체 생성
		xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
				var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)

                var commentListBox = document.getElementById("tableSixInfo");
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
                nabColBox2A.innerText="테이블2페이지";
                nabColBox2.appendChild(nabColBox2A);
                

				//3번
                var nabColBox3 = document.createElement("div");
                nabColBox3.classList.add("col-2");
                nabColBox3.classList.add("py-3");
                nabColBox3.classList.add("border");
                nabColBox3.classList.add("border-start-0");
                nabColBox3.classList.add("border-bottom-0");
                nabColBox3.classList.add("text-primary");
                nabColBox3.classList.add("text-opacity-50");
                nabColBox3.classList.add("fw-bold");
                nabColBox3.innerText="테이블3페이지";
                nabBox.appendChild(nabColBox3);


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
                nabColBox4A.innerText="테이블4 출력";
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
                nabColBox5A.innerText="테이블5 출력";
                nabColBox5.appendChild(nabColBox5A);

                //6번
                var nabColBox6 = document.createElement("div");
                nabColBox6.classList.add("col-2");
                nabColBox6.classList.add("py-3");
                nabColBox6.classList.add("border");
                nabColBox6.classList.add("border-start-0");
                nabColBox6.classList.add("bg-light");
                nabBox.appendChild(nabColBox6);

                var nabColBox6A = document.createElement("a");
                nabColBox6A.setAttribute("href", "#");
                nabColBox6A.classList.add("text-black");
                nabColBox6A.classList.add("text-decoration-none");
                nabColBox6A.innerText="테이블6 출력";
                nabColBox6.appendChild(nabColBox6A);

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
                colGroupOne.setAttribute("width", "15%");
                colGroup.appendChild(colGroupOne);

                var colGroupTwo = document.createElement("col");
                colGroupTwo.setAttribute("width", "35%");
                colGroup.appendChild(colGroupTwo);

                var colGroupThree = document.createElement("col");
                colGroupThree.setAttribute("width", "15%");
                colGroup.appendChild(colGroupThree);

                var colGroupFour = document.createElement("col");
                colGroupFour.setAttribute("width", "35%");
                colGroup.appendChild(colGroupFour);

                var thead = document.createElement("thead");
                table.appendChild(thead);

                var theadTr = document.createElement("tr");
                thead.appendChild(theadTr);

                var theadTrTh1 = document.createElement("th");
                theadTrTh1.classList.add("text-center");
                theadTrTh1.classList.add("table-light");
                theadTrTh1.innerText="학교명";
                theadTr.appendChild(theadTrTh1);

                var theadTrTd1 = document.createElement("td");
                theadTrTd1.innerText="적어";
                theadTr.appendChild(theadTrTd1);

                var theadTrTh2 = document.createElement("th");
                theadTrTh2.classList.add("text-center");
                theadTrTh2.classList.add("table-light");
                theadTrTh2.innerText="학과전공";
                theadTr.appendChild(theadTrTh2);

                var theadTrTd2 = document.createElement("td");
                theadTrTd2.innerText="적어";
                theadTr.appendChild(theadTrTd2);

                var tbody = document.createElement("tbody");
                table.appendChild(tbody);

                var bodyTr1 = document.createElement("tr");
                tbody.appendChild(bodyTr1);

                var bodyTr1Th1 = document.createElement("th");
                bodyTr1Th1.classList.add("text-center");
                bodyTr1Th1.classList.add("table-light");
                bodyTr1Th1.innerText="입학일";
                bodyTr1.appendChild(bodyTr1Th1);

                var bodyTr1Td1 = document.createElement("td");
                bodyTr1Td1.innerText="적어"
                bodyTr1.appendChild(bodyTr1Td1);

                var bodyTr1Th2 = document.createElement("th");
                bodyTr1Th2.classList.add("text-center");
                bodyTr1Th2.classList.add("table-light");
                bodyTr1Th2.innerText="종료일";
                bodyTr1.appendChild(bodyTr1Th2);

                var bodyTr1Td2 = document.createElement("td");
                bodyTr1Td2.innerText="적으셈";
                bodyTr1.appendChild(bodyTr1Td2);

                var bodyTr2 = document.createElement("tr");
                tbody.appendChild(bodyTr2);

                var bodyTr2Th1 = document.createElement("th");
                bodyTr2Th1.classList.add("text-center");
                bodyTr2Th1.classList.add("table-light");
                bodyTr2Th1.innerText="학위";
                bodyTr2.appendChild(bodyTr2Th1);

                var bodyTr2Td1 = document.createElement("td");
                bodyTr2Td1.innerText="적어";
                bodyTr2.appendChild(bodyTr2Td1);

                var bodyTr2Th2 = document.createElement("th");
                bodyTr2Th2.innerText="최종학력";
                bodyTr2Th2.classList.add("text-center");
                bodyTr2Th2.classList.add("table-light");
                bodyTr2.appendChild(bodyTr2Th2);

                var bodyTr2Td2 = document.createElement("td");
                bodyTr2Td2.innerText="적어";
                bodyTr2.appendChild(bodyTr2Td2);

                commentListBox.appendChild(rowBox);
                
            }
			
    }
        xhr.open("get" , "selTableOne?aplcn_dtls_proper_num=" + userNo); //리퀘스트 세팅..
			//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
		xhr.send(); //AJAX로 리퀘스트함..	
}

function tableSevenInfo(){
    var xhr = new XMLHttpRequest(); //AJAX 객체 생성
		xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
				var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)

                var commentListBox = document.getElementById("tableSevenInfo");
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
                nabColBox4.classList.add("border-bottom-0");
                nabColBox4.classList.add("text-primary");
                nabColBox4.classList.add("text-opacity-50");
                nabColBox4.classList.add("fw-bold");
                nabColBox4.innerText="테이블7페이지";
                nabBox.appendChild(nabColBox4);

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
                nabColBox6.classList.add("bg-light");
                nabBox.appendChild(nabColBox6);

                var nabColBox6A = document.createElement("a");
                nabColBox6A.setAttribute("href", "#");
                nabColBox6A.classList.add("text-black");
                nabColBox6A.classList.add("text-decoration-none");
                nabColBox6A.innerText="테이블9 출력";
                nabColBox6.appendChild(nabColBox6A);

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
                colGroupOne.setAttribute("width", "15%");
                colGroup.appendChild(colGroupOne);

                var colGroupTwo = document.createElement("col");
                colGroupTwo.setAttribute("width", "35%");
                colGroup.appendChild(colGroupTwo);

                var colGroupThree = document.createElement("col");
                colGroupThree.setAttribute("width", "15%");
                colGroup.appendChild(colGroupThree);

                var colGroupFour = document.createElement("col");
                colGroupFour.setAttribute("width", "35%");
                colGroup.appendChild(colGroupFour);

                var thead = document.createElement("thead");
                table.appendChild(thead);

                var theadTr = document.createElement("tr");
                thead.appendChild(theadTr);

                var theadTrTh1 = document.createElement("th");
                theadTrTh1.classList.add("text-center");
                theadTrTh1.classList.add("table-light");
                theadTrTh1.innerText="회사/활동기관 명";
                theadTr.appendChild(theadTrTh1);

                var theadTrTd1 = document.createElement("td");
                theadTrTd1.innerText="적어";
                theadTr.appendChild(theadTrTd1);

                var theadTrTh2 = document.createElement("th");
                theadTrTh2.classList.add("text-center");
                theadTrTh2.classList.add("table-light");
                theadTrTh2.innerText="경력 구분";
                theadTr.appendChild(theadTrTh2);

                var theadTrTd2 = document.createElement("td");
                theadTrTd2.innerText="적어";
                theadTr.appendChild(theadTrTd2);

                var tbody = document.createElement("tbody");
                table.appendChild(tbody);

                var bodyTr1 = document.createElement("tr");
                tbody.appendChild(bodyTr1);

                var bodyTr1Th1 = document.createElement("th");
                bodyTr1Th1.classList.add("text-center");
                bodyTr1Th1.classList.add("table-light");
                bodyTr1Th1.innerText="근무 시작 일자";
                bodyTr1.appendChild(bodyTr1Th1);

                var bodyTr1Td1 = document.createElement("td");
                bodyTr1Td1.innerText="적어"
                bodyTr1.appendChild(bodyTr1Td1);

                var bodyTr1Th2 = document.createElement("th");
                bodyTr1Th2.classList.add("text-center");
                bodyTr1Th2.classList.add("table-light");
                bodyTr1Th2.innerText="근무 종료 일자";
                bodyTr1.appendChild(bodyTr1Th2);

                var bodyTr1Td2 = document.createElement("td");
                bodyTr1Td2.innerText="적으셈";
                bodyTr1.appendChild(bodyTr1Td2);

                var bodyTr2 = document.createElement("tr");
                tbody.appendChild(bodyTr2);

                var bodyTr2Th1 = document.createElement("th");
                bodyTr2Th1.classList.add("text-center");
                bodyTr2Th1.classList.add("table-light");
                bodyTr2Th1.innerText="직책";
                bodyTr2.appendChild(bodyTr2Th1);

                var bodyTr2Td1 = document.createElement("td");
                bodyTr2Td1.innerText="적어";
                bodyTr2.appendChild(bodyTr2Td1);

                var bodyTr2Th2 = document.createElement("th");
                bodyTr2Th2.innerText="부서";
                bodyTr2Th2.classList.add("text-center");
                bodyTr2Th2.classList.add("table-light");
                bodyTr2.appendChild(bodyTr2Th2);

                var bodyTr2Td2 = document.createElement("td");
                bodyTr2Td2.innerText="적어";
                bodyTr2.appendChild(bodyTr2Td2);


                var bodyTr3 = document.createElement("tr");
                tbody.appendChild(bodyTr3);

                var bodyTr3Th = document.createElement("th");
                bodyTr3Th.classList.add("text-center");
                bodyTr3Th.classList.add("table-light");
                bodyTr3Th.innerText="수행 업무";
                bodyTr3.appendChild(bodyTr3Th);

                var bodyTr3Td = document.createElement("td");
                bodyTr3Td.setAttribute("colspan", "3");
                bodyTr3Td.innerText="적으셈";
                bodyTr3.appendChild(bodyTr3Td);


                //기본정보 네비
                var subNab2 = document.createElement("div");
                subNab2.classList.add("row");
                subNab2.classList.add("mx-0");
                subNab2.classList.add("border-bottom");
                subNab2.classList.add("pb-4");
                rowBox.appendChild(subNab2);

                var subNab2Span = document.createElement("span");
                subNab2Span.innerText="기본정보";
                subNab2.appendChild(subNab2Span);

                var subNab2SpanFromI = document.createElement("i");
                subNab2SpanFromI.classList.add("bi");
                subNab2SpanFromI.classList.add("bi-circle-fill");
                subNab2Span.appendChild(subNab2SpanFromI);

                //테이블 시작

                var tableRow2 = document.createElement("div");
                rowBox.appendChild(tableRow2);

                var table2 = document.createElement("table");
                table2.classList.add("table");
                table2.classList.add("table-bordereed");
                tableRow2.appendChild(table2);

                var colGroup2 = document.createElement("colgroup");
                table2.appendChild(colGroup2);

                var colGroupOne2 = document.createElement("col");
                colGroupOne2.setAttribute("width", "20%");
                colGroup2.appendChild(colGroupOne2);

                var colGroupTwo2 = document.createElement("col");
                colGroupTwo2.setAttribute("width", "80%");
                colGroup2.appendChild(colGroupTwo2);

                var thead2 = document.createElement("thead");
                table2.appendChild(thead2);

                var thead2Tr1 = document.createElement("tr");
                thead2Tr1.setAttribute("rowspan", "2");
                thead2Tr1.setAttribute("scope", "row");
                thead2Tr1.setAttribute("style", "line-height:100px");
                thead2.appendChild(thead2Tr1);

                var thead2Tr1Th1 = document.createElement("th");
                thead2Tr1Th1.classList.add("table-light");
                thead2Tr1Th1.classList.add("text-center");
                thead2Tr1Th1.innerText="활동경력";
                thead2Tr1.appendChild(thead2Tr1Th1);

                var thead2Tr1Td1 = document.createElement("td");
                thead2Tr1Td1.innerText= "적으셈";
                thead2Tr1.appendChild(thead2Tr1Td1);

                var thead2Tr2 = document.createElement("tr");
                thead2Tr2.classList.add("text-cneter");
                thead2Tr2.setAttribute("rowspan", "2");
                thead2Tr2.setAttribute("scope", "row");
                thead2Tr2.setAttribute("style", "line-height:100px");
                thead2.appendChild(thead2Tr2);

                var thead2Tr2Th1 = document.createElement("th");
                thead2Tr2Th1.classList.add("table-light");
                thead2Tr2Th1.classList.add("text-center");
                thead2Tr2Th1.innerText="특이사항";
                thead2Tr2.appendChild(thead2Tr2Th1);

                var thead2Tr2Td1 = document.createElement("hd");
                thead2Tr2Td1.innerText="적으셈";
                thead2Tr2.appendChild(thead2Tr2Td1);

                commentListBox.appendChild(rowBox);
            }
    }
        xhr.open("get" , "selTableOne?aplcn_dtls_proper_num=" + userNo); //리퀘스트 세팅..
			//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
		xhr.send(); //AJAX로 리퀘스트함..	
}

function tableEightInfo(){
    var xhr = new XMLHttpRequest(); //AJAX 객체 생성
		xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
				var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)

                var commentListBox = document.getElementById("tableEightInfo");
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
                nabColBox5.classList.add("border-bottom-0");
                nabColBox5.classList.add("text-primary");
                nabColBox5.classList.add("text-opacity-50");
                nabColBox5.classList.add("fw-bold");
                nabColBox5.innerText="테이블8페이지";
                nabBox.appendChild(nabColBox5);

                //6번
                var nabColBox6 = document.createElement("div");
                nabColBox6.classList.add("col-2");
                nabColBox6.classList.add("py-3");
                nabColBox6.classList.add("border");
                nabColBox6.classList.add("border-start-0");
                nabColBox6.classList.add("bg-light");
                nabBox.appendChild(nabColBox6);

                var nabColBox6A = document.createElement("a");
                nabColBox6A.setAttribute("href", "#");
                nabColBox6A.classList.add("text-black");
                nabColBox6A.classList.add("text-decoration-none");
                nabColBox6A.innerText="테이블9 출력";
                nabColBox6.appendChild(nabColBox6A);

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
                colGroupOne.setAttribute("width", "15%");
                colGroup.appendChild(colGroupOne);

                var colGroupTwo = document.createElement("col");
                colGroupTwo.setAttribute("width", "35%");
                colGroup.appendChild(colGroupTwo);

                var colGroupThree = document.createElement("col");
                colGroupThree.setAttribute("width", "15%");
                colGroup.appendChild(colGroupThree);

                var colGroupFour = document.createElement("col");
                colGroupFour.setAttribute("width", "35%");
                colGroup.appendChild(colGroupFour);


                var thead = document.createElement("thead");
                table.appendChild(thead);

                var theadTr = document.createElement("tr");
                thead.appendChild(theadTr);

                var theadTrTh1 = document.createElement("th");
                theadTrTh1.classList.add("text-center");
                theadTrTh1.classList.add("table-light");
                theadTrTh1.innerText="자격증 종목";
                theadTr.appendChild(theadTrTh1);

                var theadTrTd1 = document.createElement("td");
                theadTrTd1.innerText="적어";
                theadTr.appendChild(theadTrTd1);

                var theadTrTh2 = document.createElement("th");
                theadTrTh2.classList.add("text-center");
                theadTrTh2.classList.add("table-light");
                theadTrTh2.innerText="발급기관";
                theadTr.appendChild(theadTrTh2);

                var theadTrTd2 = document.createElement("td");
                theadTrTd2.innerText="적어";
                theadTr.appendChild(theadTrTd2);

                var tbody = document.createElement("tbody");
                table.appendChild(tbody);

                var bodyTr1 = document.createElement("tr");
                tbody.appendChild(bodyTr1);

                var bodyTr1Th1 = document.createElement("th");
                bodyTr1Th1.classList.add("text-center");
                bodyTr1Th1.classList.add("table-light");
                bodyTr1Th1.innerText="자격증/면허 번호";
                bodyTr1.appendChild(bodyTr1Th1);

                var bodyTr1Td1 = document.createElement("td");
                bodyTr1Td1.innerText="적어"
                bodyTr1.appendChild(bodyTr1Td1);

                var bodyTr1Th2 = document.createElement("th");
                bodyTr1Th2.classList.add("text-center");
                bodyTr1Th2.classList.add("table-light");
                bodyTr1Th2.innerText="발급일";
                bodyTr1.appendChild(bodyTr1Th2);

                var bodyTr1Td2 = document.createElement("td");
                bodyTr1Td2.innerText="적으셈";
                bodyTr1.appendChild(bodyTr1Td2);

                
                commentListBox.appendChild(rowBox);
            }
    }
        xhr.open("get" , "selTableOne?aplcn_dtls_proper_num=" + userNo); //리퀘스트 세팅..
			//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
		xhr.send(); //AJAX로 리퀘스트함..	
}

