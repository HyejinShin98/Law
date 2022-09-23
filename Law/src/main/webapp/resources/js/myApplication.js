function changeBtn(addId, navClassName){
	//입력하는 버튼
	var addBtn = document.getElementById(addId);
	//지워질 버튼
	var delBtn = document.getElementsByClassName(navClassName);
	for(e of delBtn){
		e.classList.remove("border-bottom-0");
		e.classList.remove("text-primary");
		e.classList.remove("text-opacity-50");
		e.classList.remove("fw-bold");
		e.classList.add("bg-secondary");
		e.classList.add("bg-opacity-10");
	}
	addBtn.classList.remove("bg-secondary");
	addBtn.classList.remove("bg-opacity-10");
	addBtn.classList.add("border-bottom-0");
	addBtn.classList.add("text-primary");
	addBtn.classList.add("text-opacity-50");
	addBtn.classList.add("fw-bold");
}

// 유무 체크 시 disabled 처리함수
function disabledToggle(flag, id) {
	if(flag == 'y') { // 유 체크
		document.getElementById(id).disabled = false;	
	} else if(flag == 'n') { // 무 체크
		document.getElementById(id).disabled = true;
		document.getElementById(id).value = "";	
	}
}



// 작성완료 버튼 시 실행함수
function application() {
	var msg = "작성 완료하시겠습니까? 이후 수정이 불가합니다.";
	if(confirm(msg)) {
		// TODO: 성공 시 처리 
		// 상태 바꾸기 
		
	}
	
}

// 입력값 공백체크 함수
function chkValEmpty() {
	var result = true;
	var infoBox = document.getElementById("nav-info");
	var values = infoBox.getElementsByTagName("input");
	
	// 공백검사
	for(let i=0; i<values.length; i++) {
	
		// disabled가 아닌 입력값만 공백 체크
		if(!values[i].disabled) {
			if(values[i].value == '') {
				values[i].focus();
				result = false;
			}
		}
	}
	return result;
}

// 기본정보 submit
function tableOnefrmSubmit() {
	if(!chkValEmpty()) {
		return;
	} else {
		
		var frmData = $("#tableOneFrm").serialize();
		$.ajax({
			url: "./modifyUserDetail",
			method: "post",
			data: frmData,
			dataType: "json",
		}).done(function(obj) {
			alert(obj.msg);
	
		}).fail(function() {
			
		})
	}
}

// 신청정보 submit
function tableFiveFrmSubmit() {
	if(!chkValEmpty()) {
		return;
	} else {
	
		document.getElementById("ligtn_case_carer_etc").disabled = false;
		document.getElementById("insrn_indst_carer_etc").disabled = false;
		document.getElementById("criminal_penalty_carer_etc").disabled = false;
		
		var frmData = $("#tableFiveFrm").serialize();
		$.ajax({
			url: "./modifyTableFive",
			method: "post",
			data: frmData,
			dataType: "json",
		}).done(function(obj) {
			alert(obj.msg);
		
		}).fail(function() { })
	
	}
}

// 학력정보 submit
function tableSixFrmSubmit() {}

// 경력정보 submit
function tableSevenFrmSubmit() {}

// 자격증정보 submit
function tableEightFrmSubmit() {}

// 첨부파일정보 submit
function tableNineFrmSubmit() {}




function userDetailWrite(){
    var xhr = new XMLHttpRequest(); //AJAX 객체 생성
		xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
				
				var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)
				var data = jsonObj.map;
				
				var commentListBox = document.getElementById("nav-info");
				commentListBox.innerHTML = "";
				
				if(data != null || data != undefined) {
				
	
	                var rowBox = document.createElement("div");
	                rowBox.classList.add("row");
	                
	                var txtRow = document.createElement("div");
	                txtRow.classList.add("row");
	                txtRow.classList.add("mx-0");
	                txtRow.classList.add("border-bottom");
	                txtRow.classList.add("pb-4");
	                rowBox.appendChild(txtRow);
	                
	                var txtCol = document.createElement("div");
	                txtCol.classList.add("col");
	                txtRow.appendChild(txtCol);
	                
	                var txtSpan = document.createElement("span");
	                txtSpan.innerText = "* 모든 값은 필수입력입니다.";
	                txtSpan.classList.add("text-danger");
	                txtSpan.classList.add("fw-bold");
	                txtCol.appendChild(txtSpan);
	                
	
					/*
	                var subNab1Span = document.createElement("span");
	                subNab1Span.innerText="기본정보";
	                subNab1.appendChild(subNab1Span);
					
	                var subNab1SpanFromI = document.createElement("i");
	                subNab1SpanFromI.classList.add("bi");
	                subNab1SpanFromI.classList.add("bi-circle-fill");
	                subNab1Span.appendChild(subNab1SpanFromI);
					*/
	                
	                var tableRowBox = document.createElement("div");
	                tableRowBox.classList.add("row");
	                tableRowBox.classList.add("px-0");
	                tableRowBox.classList.add("mx-0");
	                rowBox.appendChild(tableRowBox);
	                
	                var TableOneFrm = document.createElement("form");
	                TableOneFrm.id = "tableOneFrm";
	                TableOneFrm.name = "tableOneFrm";
	                tableRowBox.appendChild(TableOneFrm);
	
	                var tableBox = document.createElement("table");
	                tableBox.classList.add("table");
	                tableBox.classList.add("table-bordered");
	                TableOneFrm.appendChild(tableBox);
	
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
	                trTd1.innerText = jsonObj.map.USER_NAME;
	                threadTr.appendChild(trTd1);
	                
	                /*
	                var inputUserName = document.createElement("input");
	                inputUserName.type = "text";
	                inputUserName.value = jsonObj.map.USER_NAME;
	                inputUserName.id = "user_name";
	                inputUserName.name = "user_name";
	                inputUserName.classList.add("form-control");
	                trTd1.appendChild(inputUserName);
	                */
	
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
	                bodyTr1.appendChild(bodyTd1);
	                
	                var inputEmail = document.createElement("input");
	                inputEmail.type = "text";
	                inputEmail.classList.add("form-control");
	                inputEmail.value = jsonObj.map.USER_EMAIL;
	                inputEmail.id = "user_email";
	                inputEmail.name = "user_email";
	                bodyTd1.appendChild(inputEmail);
	
	                var bodyTh2 = document.createElement("th");
	                bodyTh2.classList.add("text-center");
	                bodyTh2.classList.add("table-light");
	                bodyTh2.innerText="연락처";
	                bodyTr1.appendChild(bodyTh2);
	
	                var bodyTd2 = document.createElement("td");
	                bodyTr1.appendChild(bodyTd2);
	                
	                var inputPhone = document.createElement("input");
	                inputPhone.type = "text";
	                inputPhone.classList.add("form-control");
	                inputPhone.value = jsonObj.map.USER_PHONE;
	                inputPhone.id = "user_phone";
	                inputPhone.name = "user_phone";
	                bodyTd2.appendChild(inputPhone);
	                
	                var bodyTr2 = document.createElement("tr");
	                tableBody.appendChild(bodyTr2);
	
	                var bodyTh3 = document.createElement("th");
	                bodyTh3.classList.add("text-center");
	                bodyTh3.classList.add("table-light");
	                bodyTh3.innerText="직업";
	                bodyTr2.appendChild(bodyTh3);
	
	                var bodyTd3 = document.createElement("td");
	                bodyTr2.appendChild(bodyTd3);
	                
	                var inputJob = document.createElement("input");
	                inputJob.type = "text";
	                inputJob.classList.add("form-control");
	                inputJob.value = jsonObj.map.USER_JOB;
	                inputJob.id = "user_job";
	                inputJob.name = "user_job";
	                bodyTd3.appendChild(inputJob);
	
	                var bodyTh4 = document.createElement("th");
	                bodyTh4.classList.add("text-center");
	                bodyTh4.classList.add("table-light");
	                bodyTh4.innerText="기본주소";
	                bodyTr2.appendChild(bodyTh4);
	
	                var bodyTd4 = document.createElement("td");
	                bodyTr2 .appendChild(bodyTd4);
	                
	                var inputAddr = document.createElement("input");
	                inputAddr.type = "text";
	                inputAddr.classList.add("form-control");
	                inputAddr.value = jsonObj.map.USER_AR; 
	                inputAddr.id = "user_ar";
	                inputAddr.name = "user_ar";
	                bodyTd4.appendChild(inputAddr);
	
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
	                //bodyTd5.innerText="우편번호 : ";
	                bodyTr3 .appendChild(bodyTd5);
	                
	                var zoneCodeRow = document.createElement("div");
	                zoneCodeRow.classList.add("row");
	                bodyTd5.appendChild(zoneCodeRow);
	                
	                var zoneCodeCol1 = document.createElement("div");
	                zoneCodeCol1.classList.add("col-2");
	                zoneCodeCol1.classList.add("mt-1");
	                zoneCodeCol1.style.width = "100px";
	                zoneCodeRow.appendChild(zoneCodeCol1);
	                
	                var zoneCodeSpan = document.createElement("span");
	                zoneCodeSpan.innerText = "우편번호 : ";
	                zoneCodeCol1.appendChild(zoneCodeSpan);
	                
	                var zoneCodeCol2 = document.createElement("div");
	                zoneCodeCol2.classList.add("col-2");
	                zoneCodeCol2.style.width = "90px";
	                zoneCodeRow.appendChild(zoneCodeCol2);
	                
	                var inputZoneCode = document.createElement("input");
	                inputZoneCode.type = "text";
	                inputZoneCode.classList.add("form-control");
	                inputZoneCode.value = jsonObj.map.USER_AR_ZONECODE;
	                inputZoneCode.id = "user_ar_zonecode";
	                inputZoneCode.name = "user_ar_zonecode";
	                inputZoneCode.disabled = true;
	                inputZoneCode.style.width = "75px";
	                zoneCodeCol2.appendChild(inputZoneCode);
					
					var zoneCodeCol3 = document.createElement("div");
					zoneCodeCol3.classList.add("col-2");
					zoneCodeCol3.style.width = "100px";
					zoneCodeRow.appendChild(zoneCodeCol3);
					
					var addrSearchBtn = document.createElement("div");
					addrSearchBtn.classList.add("btn");
					addrSearchBtn.classList.add("btn-success");
					addrSearchBtn.innerText = "검색";
					addrSearchBtn.setAttribute("onClick", "searchAddr();");
					zoneCodeCol3.appendChild(addrSearchBtn);
					
	                var bodyTr4 = document.createElement("tr");
	                tableBody.appendChild(bodyTr4);
	
	                var bodyTd6 = document.createElement("td");
	                bodyTd6.setAttribute("colspan", "3");
	                //bodyTd6.innerText="지번주소 : ";
	                bodyTr4 .appendChild(bodyTd6);// 지번주소
	                
	                var addrJibunRow = document.createElement("div");
	                addrJibunRow.classList.add("row");
	                bodyTd6.appendChild(addrJibunRow);
	                
	                var addrJibunCol1 = document.createElement("div");
	                addrJibunCol1.classList.add("col-2");
	                addrJibunCol1.style.width = "100px";
	                addrJibunRow.appendChild(addrJibunCol1);
	                
	                var addrJibunSpan = document.createElement("span");
	                addrJibunSpan.innerText = "지번주소 : ";
	                addrJibunCol1.appendChild(addrJibunSpan);
	                
	                var addrJibunCol2 = document.createElement("div");
	                addrJibunCol2.classList.add("col");
	                addrJibunRow.appendChild(addrJibunCol2);
	                
					var inputArJibun = document.createElement("input");
					inputArJibun.type = "text";
					inputArJibun.classList.add("form-control");
					inputArJibun.value = jsonObj.map.USER_AR_JIBUN;
					inputArJibun.id = "user_ar_jibun";
					inputArJibun.name = "user_ar_jibun";
					addrJibunCol2.appendChild(inputArJibun);
	
	                var bodyTr5 = document.createElement("tr");
	                tableBody.appendChild(bodyTr5);
	
	                var bodyTd7 = document.createElement("td");
	                bodyTd7.setAttribute("colspan", "3");
	                //bodyTd7.innerText="상세주소 : ";
	                bodyTr5 .appendChild(bodyTd7);// 상세주소
	
					var addrDetailRow = document.createElement("div");
					addrDetailRow.classList.add("row");
					bodyTd7.appendChild(addrDetailRow);
					
					var addrDetailCol1 = document.createElement("div");
					addrDetailCol1.classList.add("col-2");
					addrDetailCol1.style.width = "100px";
					addrDetailRow.appendChild(addrDetailCol1);
					
					var addrDetailSpan = document.createElement("span");
					addrDetailSpan.innerText = "상세주소 : ";
					addrDetailCol1.appendChild(addrDetailSpan);
					
					var addrDetailCol2 = document.createElement("div");
					addrDetailCol2.classList.add("col");
					addrDetailRow.appendChild(addrDetailCol2);
					
					var inputArDetail = document.createElement("input");
					inputArDetail.type = "text";
					inputArDetail.classList.add("form-control");
					inputArDetail.value = jsonObj.map.USER_AR_DETAIL;
					inputArDetail.id = "user_ar_detail";
					inputArDetail.name = "user_ar_detail";
					addrDetailCol2.appendChild(inputArDetail);
	
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
	                //bodyTd8.innerText="예금주 : ";
	                bodyTr6 .appendChild(bodyTd8);
					
					var bankHolderRow = document.createElement("div");
					bankHolderRow.classList.add("row");
					bodyTd8.appendChild(bankHolderRow);
					
					var bankHolderCol1 = document.createElement("div");
					bankHolderCol1.classList.add("col-2");
					bankHolderCol1.style.width = "100px";
					bankHolderRow.appendChild(bankHolderCol1);
					
					var bankHolderSpan = document.createElement("span");
					bankHolderSpan.innerText = "예금주 : ";
					bankHolderCol1.appendChild(bankHolderSpan);
					
					var bankHolderCol2 = document.createElement("div");
					bankHolderCol2.classList.add("col");
					bankHolderRow.appendChild(bankHolderCol2);
					
					var inputBankHolder = document.createElement("input");
					inputBankHolder.type = "text";
					inputBankHolder.classList.add("form-control");
					inputBankHolder.value = jsonObj.map.USER_BANK_HOLDER;
					inputBankHolder.id = "user_bank_holder";
					inputBankHolder.name = "user_bank_holder";
					bankHolderCol2.appendChild(inputBankHolder);
	
	                var bodyTr7 = document.createElement("tr");
	                tableBody.appendChild(bodyTr7);
	                
	                var bodyTd9 = document.createElement("td");
	                bodyTd9.setAttribute("colspan", "3");
	                //bodyTd9.innerText="계좌은행 : ";
	                bodyTr7 .appendChild(bodyTd9);
	                
	                var bankRow = document.createElement("div");
	                bankRow.classList.add("row");
	                bodyTd9.appendChild(bankRow);
	                
	                var bankCol1 = document.createElement("div");
	                bankCol1.classList.add("col-2");
	                bankCol1.style.width = "100px";
	                bankRow.appendChild(bankCol1);
	                
	                var bankSpan = document.createElement("span");
	                bankSpan.innerText = "계좌은행 : ";
	                bankCol1.appendChild(bankSpan);
	                
	                var bankCol2 = document.createElement("div");
	                bankCol2.classList.add("col");
	                bankRow.appendChild(bankCol2);
	                
	                var inputBank = document.createElement("input");
	                inputBank.type = "text";
	                inputBank.classList.add("form-control");
	                inputBank.value = jsonObj.map.USER_BANK; 
	                inputBank.id = "user_bank";
	                inputBank.name = "user_bank";
	                bankCol2.appendChild(inputBank);
	                
	                var bodyTr8 = document.createElement("tr");
	                tableBody.appendChild(bodyTr8);
	
	                var bodyTd10 = document.createElement("td");
	                bodyTd10.setAttribute("colspan", "3");
	                // bodyTd10.innerText="계좌번호 : ";
	                bodyTr8 .appendChild(bodyTd10);
	                
	                var bankAccountRow = document.createElement("div");
	                bankAccountRow.classList.add("row");
	                bodyTd10.appendChild(bankAccountRow);
	                
	                var bankAccountCol1 = document.createElement("div");
	                bankAccountCol1.classList.add("col-2");
	                bankAccountCol1.style.width = "100px";
	                bankAccountRow.appendChild(bankAccountCol1);
	                
	                var bankAccountSpan = document.createElement("span");
	                bankAccountSpan.innerText = "계좌번호 : ";
	                bankAccountCol1.appendChild(bankAccountSpan);
	                
	                var bankAccountCol2 = document.createElement("div");
	                bankAccountCol2.classList.add("col");
	                bankAccountRow.appendChild(bankAccountCol2);
	                
	                var inputBankAccount = document.createElement("input");
	                inputBankAccount.type = "text";
	                inputBankAccount.classList.add("form-control");
	                inputBankAccount.value = jsonObj.map.USER_BANK_ACCOUNT;
	                inputBankAccount.id = "user_bank_account"; 
	                inputBankAccount.name = "user_bank_account";
	                bankAccountCol2.appendChild(inputBankAccount); 
					
					/*
		 			var btnRow = document.createElement("div");
		 			btnRow.classList.add("row");
		 			btnRow.classList.add("text-center");
		 			TableOneFrm.appendChild(btnRow);
		 			
		 			var btnCol = document.createElement("div");
		 			btnCol.classList.add("col");
		 			btnRow.appendChild(btnCol);
		 			
					var submitBtn = document.createElement("input");
					submitBtn.type = "submit";
					submitBtn.value = "다음";
					submitBtn.classList.add("btn");
					submitBtn.classList.add("btn-outline-primary");
					submitBtn.setAttribute("onclick", "tableFiveInfo();");
					btnCol.appendChild(submitBtn);
					*/
					
					var properNum = document.createElement("input");
					properNum.type = "hidden";
					properNum.value = jsonObj.map.USER_PROPER_NUM;
					properNum.id = "user_proper_num";
					properNum.name = "user_proper_num";
					TableOneFrm.appendChild(properNum);
					
	                commentListBox.appendChild(rowBox);
	                
	                // 저장버튼
	                var submitRow = document.createElement("div");
	                submitRow.classList.add("row");
	                submitRow.classList.add("text-center");
	                TableOneFrm.appendChild(submitRow);
	                
	                var submitCol = document.createElement("div");
	                submitCol.classList.add("col");
	                submitRow.appendChild(submitCol);
	                
	                var submitBtn = document.createElement("button");
	                submitBtn.classList.add("btn");
	                submitBtn.classList.add("btn-primary");
	                submitBtn.classList.add("mx-2");
	                
	                submitBtn.type = "button";
	                submitBtn.innerText = "저장";
	                submitBtn.setAttribute("onclick", "tableOnefrmSubmit();");
	                submitCol.appendChild(submitBtn);
	                
	                var finalSubmitBtn = document.createElement("button");
	                finalSubmitBtn.classList.add("btn");
	                finalSubmitBtn.classList.add("btn-outline-primary");
	                finalSubmitBtn.innerText = "작성완료";
	                finalSubmitBtn.setAttribute("onclick", "application();");
	                submitCol.appendChild(finalSubmitBtn);
	                
	                
	            // ajax 등재신청 결과값 null일 때    
                } else {	
                	var errMsgRow = document.createElement("div");
                	errMsgRow.classList.add("row");
                	
                	var errMsgCol = document.createElement("div");
                	errMsgCol.classList.add("col");
                	errMsgRow.appendChild(errMsgCol);
                	
                	var errMsgSpan = document.createElement("span");
                	errMsgSpan.innerText = "등재신청 정보를 찾을 수 없습니다.";
                	errMsgCol.appendChild(errMsgSpan);
                	
                	commentListBox.appendChild(errMsgRow);
                	 
                }
            }
    }
        xhr.open("get" , "../admin/selTableOne?aplcn_dtls_proper_num=" + userNo); //리퀘스트 세팅..
		//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
		xhr.send(); //AJAX로 리퀘스트함..		
}


function tableFiveInfo(){
    var xhr = new XMLHttpRequest(); //AJAX 객체 생성
		xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
				var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)

                var commentListBox = document.getElementById("nav-info");
				commentListBox.innerHTML = "";

                var rowBox = document.createElement("div");
                rowBox.classList.add("row");

                
                var subNab1 = document.createElement("div");
                subNab1.classList.add("row");
                subNab1.classList.add("mx-0");
                subNab1.classList.add("border-bottom");
                subNab1.classList.add("pb-4");
                rowBox.appendChild(subNab1);
	
				/*
                var subNab1Span = document.createElement("span");
                subNab1Span.innerText="기본정보";
                subNab1.appendChild(subNab1Span);

                var subNab1SpanFromI = document.createElement("i");
                subNab1SpanFromI.classList.add("bi");
                subNab1SpanFromI.classList.add("bi-circle-fill");
                subNab1Span.appendChild(subNab1SpanFromI);
				*/
				
                var tableRow = document.createElement("div");
                tableRow.classList.add("row");
				tableRow.classList.add("mx-0");
				tableRow.classList.add("px-0");
                rowBox.appendChild(tableRow);

				var tableFiveFrm = document.createElement("form");
				tableFiveFrm.id = "tableFiveFrm";
				tableFiveFrm.name = "tableFiveFrm";
				tableRow.appendChild(tableFiveFrm);

                var table = document.createElement("table");
                table.classList.add("table");
                table.classList.add("table-bordered");
                tableFiveFrm.appendChild(table);
                
                var colGroup = document.createElement("colgroup");
                table.appendChild(colGroup);

                var colGroupOne = document.createElement("col");
                colGroupOne.setAttribute("width", "20%");
                colGroup.appendChild(colGroupOne);
                
                var colGroupTwo = document.createElement("col");
                colGroupTwo.setAttribute("width", "20%");
                colGroup.appendChild(colGroupTwo);

                var colGroupThree = document.createElement("col");
                colGroupThree.setAttribute("width", "60%");
                colGroup.appendChild(colGroupThree);

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
                bodyTr1Th1.innerText="소송사건 당사자 경력";
                bodyTr1.appendChild(bodyTr1Th1);

				var bodyTr1Td1 = document.createElement("td");
				bodyTr1.appendChild(bodyTr1Td1);
				
				var inputYesLigtnBox = document.createElement("div");
				inputYesLigtnBox.classList.add("form-check");
				inputYesLigtnBox.style.float = "left";
				inputYesLigtnBox.style.margin = "5px 20px 0px 50px";
				bodyTr1Td1.appendChild(inputYesLigtnBox);
				
				var inputYesLigtn = document.createElement("input");
				inputYesLigtn.classList.add("form-check-input");
				inputYesLigtn.type = "radio";
				inputYesLigtn.name = "ligtn_case_carer_yn";
				inputYesLigtn.id = "ligtn_case_carer_y";
				inputYesLigtn.value = "y";
				inputYesLigtn.style.float = "none";
				inputYesLigtn.style.marginRight = "5px";
				inputYesLigtn.setAttribute("onclick", "disabledToggle('y', 'ligtn_case_carer_etc');");
				inputYesLigtnBox.appendChild(inputYesLigtn);
				
				var labelYesLigtn = document.createElement("label");
				labelYesLigtn.classList.add("form-check-label");
				labelYesLigtn.for = "ligtn_case_carer_y";
				labelYesLigtn.innerText = "유";
				inputYesLigtnBox.appendChild(labelYesLigtn);
				
				var inputNoLigtnBox = document.createElement("div");
				inputNoLigtnBox.classList.add("form-check");
				inputNoLigtnBox.style.float = "left";
				inputNoLigtnBox.style.marginTop = "5px";
				bodyTr1Td1.appendChild(inputNoLigtnBox);
				
				var inputNoLigtn = document.createElement("input");
				inputNoLigtn.classList.add("form-check-input");
				inputNoLigtn.type = "radio";
				inputNoLigtn.name = "ligtn_case_carer_yn";
				inputNoLigtn.id = "ligtn_case_carer_n";
				inputNoLigtn.value = "n";
				inputNoLigtn.style.float = "none";
				inputNoLigtn.style.marginRight = "5px";
				inputNoLigtn.setAttribute("onclick", "disabledToggle('n', 'ligtn_case_carer_etc');");
				inputNoLigtnBox.appendChild(inputNoLigtn);
				
				var labelNoLigtn = document.createElement("label");
				labelNoLigtn.classList.add("form-check-label");
				labelNoLigtn.for = "ligtn_case_carer_n";
				labelNoLigtn.innerText = "무";
				inputNoLigtnBox.appendChild(labelNoLigtn);
				
                var bodyTr1Td2 = document.createElement("td");
                //bodyTr1Td2.innerText=jsonObj.map.LIGTN_CASE_CARER_ETC;
                bodyTr1.appendChild(bodyTr1Td2);
                
                var InputligtnCaseCarerEtc = document.createElement("input");
                InputligtnCaseCarerEtc.id = "ligtn_case_carer_etc";
                InputligtnCaseCarerEtc.name = "ligtn_case_carer_etc";
                InputligtnCaseCarerEtc.classList.add("form-control");
                
                InputligtnCaseCarerEtc.value = jsonObj.map.LIGTN_CASE_CARER_ETC; 
                var ligtnCaseCarerEtc =  jsonObj.map.LIGTN_CASE_CARER_ETC
                if(ligtnCaseCarerEtc == "" || ligtnCaseCarerEtc == undefined) {
	                InputligtnCaseCarerEtc.value = ""; 
                } else {
	                InputligtnCaseCarerEtc.value = ligtnCaseCarerEtc; 
                }
                
                bodyTr1Td2.appendChild(InputligtnCaseCarerEtc);

				var ligtn_case_carer_yn = jsonObj.map.LIGTN_CASE_CARER_YN;
				console.log("ligtn_case_carer_yn : " + ligtn_case_carer_yn);
				if(ligtn_case_carer_yn == 'y') {
					inputYesLigtn.checked = true;
					InputligtnCaseCarerEtc.disabled = false;
				} else if(ligtn_case_carer_yn == 'n') {
					inputNoLigtn.checked = true;
					InputligtnCaseCarerEtc.disabled = true;
				} 
				
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
                bodyTr2Th1.innerText ="보험업계 경력";
                bodyTr2.appendChild(bodyTr2Th1);
				
				var bodyTr2Td1 = document.createElement("td");
				bodyTr2.appendChild(bodyTr2Td1);
				
				var inputYesInsrnBox = document.createElement("div");
				inputYesInsrnBox.classList.add("form-check");
				inputYesInsrnBox.style.float = "left";
				inputYesInsrnBox.style.margin = "0px 20px 0px 50px";
				bodyTr2Td1.appendChild(inputYesInsrnBox);
				
				var inputYesInsrn = document.createElement("input");
				inputYesInsrn.classList.add("form-check-input");
				inputYesInsrn.type = "radio";
				inputYesInsrn.name = "insrn_indst_carer_yn";
				inputYesInsrn.id = "insrn_indst_carer_y";
				inputYesInsrn.value = "y";
				inputYesInsrn.style.float = "none";
				inputYesInsrn.style.marginRight = "5px";
				inputYesInsrn.setAttribute("onclick", "disabledToggle('y', 'insrn_indst_carer_etc');");
				inputYesInsrnBox.appendChild(inputYesInsrn);
				
				var labelYesInsrn = document.createElement("label");
				labelYesInsrn.classList.add("form-check-label");
				labelYesInsrn.for = "insrn_indst_carer_y";
				labelYesInsrn.innerText = "유";
				inputYesInsrnBox.appendChild(labelYesInsrn);
				
				var inputNoInsrnBox = document.createElement("div");
				inputNoInsrnBox.classList.add("form-check");
				inputNoInsrnBox.style.float = "left";
				bodyTr2Td1.appendChild(inputNoInsrnBox);
				
				var inputNoInsrn = document.createElement("input");
				inputNoInsrn.classList.add("form-check-input");
				inputNoInsrn.type = "radio";
				inputNoInsrn.name = "insrn_indst_carer_yn";
				inputNoInsrn.id = "insrn_indst_carer_n";
				inputNoInsrn.value = "n";
				inputNoInsrn.style.float = "none";
				inputNoInsrn.style.marginRight = "5px";
				inputNoInsrn.setAttribute("onclick", "disabledToggle('n', 'insrn_indst_carer_etc');");
				inputNoInsrnBox.appendChild(inputNoInsrn);
				
				var labelNoInsrn = document.createElement("label");
				labelNoInsrn.classList.add("form-check-label");
				labelNoInsrn.for = "insrn_indst_carer_n";
				labelNoInsrn.innerText = "무";
				inputNoInsrnBox.appendChild(labelNoInsrn);
				
                var bodyTr2Td2 = document.createElement("td");
                //bodyTr2Td2.innerText=jsonObj.map.INSRN_INDST_CARER_ETC;
                bodyTr2.appendChild(bodyTr2Td2);
                
                var InputInsrnIndstCarerEtc = document.createElement("input");
                InputInsrnIndstCarerEtc.id = "insrn_indst_carer_etc";
                InputInsrnIndstCarerEtc.name = "insrn_indst_carer_etc";
                InputInsrnIndstCarerEtc.classList.add("form-control");
                var insrnIndstCarerEtc =  jsonObj.map.INSRN_INDST_CARER_ETC
                if(insrnIndstCarerEtc == "" || insrnIndstCarerEtc == undefined) {
	                InputInsrnIndstCarerEtc.value = ""; 
                } else {
	                InputInsrnIndstCarerEtc.value = insrnIndstCarerEtc; 
                }
                bodyTr2Td2.appendChild(InputInsrnIndstCarerEtc);

				// 유무 체크
                var insrn_indst_carer_yn = jsonObj.map.INSRN_INDST_CARER_YN;
				console.log("insrn_indst_carer_yn : " + insrn_indst_carer_yn);
				if(insrn_indst_carer_yn == 'y') {
					inputYesInsrn.checked = true;
					InputInsrnIndstCarerEtc.disabled = false;
				} else if(insrn_indst_carer_yn == 'n') {
					inputNoInsrn.checked = true;
					InputInsrnIndstCarerEtc.disabled = true;
				} 

				//////////////////
				/*
				var insrn_indst_carer_yn = jsonObj.map.INSRN_INDST_CARER_YN;
				if(insrn_indst_carer_yn == 'y') {
					inputNoInsrn.checked = false;
					inputYesInsrn.checked = true;
					document.querySelector("input[name='insrn_indst_carer_yn']").value = 'y'
					
				} else if(insrn_indst_carer_yn == 'n') {
					inputNoInsrn.checked = true;
					inputYesInsrn.checked = false;
					document.querySelector("input[name='insrn_indst_carer_yn']").value = 'n'
				} 
				
				if(insrn_indst_carer_yn_val == 'y') {
					InputInsrnIndstCarerEtc.disabled = false;
				} else if(insrn_indst_carer_yn_val == 'n') {
					InputInsrnIndstCarerEtc.disabled = true;
				}
				
				var checkValInsrn = document.querySelector("input[name='insrn_indst_carer_yn']:checked").value;
				if(checkValInsrn == 'y') {
					InputInsrnIndstCarerEtc.disabled = false;
				} else if(checkValInsrn == 'n') {
					InputInsrnIndstCarerEtc.disabled = true;				
				}
				*//////////////////////////////
				
                var bodyTr3 = document.createElement("tr");
                bodyTr3.setAttribute("rowspan", "2");
                bodyTr3.setAttribute("scope", "row");
                bodyTr3.classList.add("text-center");
                bodyTr3.classList.add("border-2");
                //bodyTr3.setAttribute("style", "line-height:100px");
                tbody.appendChild(bodyTr3);

                var bodyTr3Th1 = document.createElement("th");
                bodyTr3Th1.classList.add("table-light");
                bodyTr3Th1.innerText="형사처벌 경력";
                bodyTr3.appendChild(bodyTr3Th1);
                
                var bodyTr3Td1 = document.createElement("td");
                bodyTr3.appendChild(bodyTr3Td1);
                
                var inputYesCriBox = document.createElement("div");
                inputYesCriBox.classList.add("form-check");
                inputYesCriBox.style.float = "left";
                inputYesCriBox.style.margin = "0px 20px 0px 50px";
                bodyTr3Td1.appendChild(inputYesCriBox);
                
                var inputYesCri = document.createElement("input");
                inputYesCri.classList.add("form-check-input");
                inputYesCri.type = "radio";
                inputYesCri.name = "criminal_penalty_carer_yn";
                inputYesCri.id = "criminal_penalty_carer_y";
                inputYesCri.value = "y";
                inputYesCri.style.float = "none";
                inputYesCri.style.marginRight = "5px";
                inputYesCri.setAttribute("onclick", "disabledToggle('y', 'criminal_penalty_carer_etc');");
                inputYesCriBox.appendChild(inputYesCri);
                
                var labelYesCri = document.createElement("label");
                labelYesCri.classList.add("form-check-label");
                labelYesCri.for = "criminal_penalty_carer_y";
                labelYesCri.innerText = "유";
                inputYesCriBox.appendChild(labelYesCri);
                
                var inputNoCriBox = document.createElement("div");
				inputNoCriBox.classList.add("form-check");
				inputNoCriBox.style.float = "left";
				bodyTr3Td1.appendChild(inputNoCriBox);
				
				var inputNoCri = document.createElement("input");
				inputNoCri.classList.add("form-check-input");
				inputNoCri.type = "radio";
				inputNoCri.name = "criminal_penalty_carer_yn";
				inputNoCri.id = "criminal_penalty_carer_ n";
				inputNoCri.value = "n";
				inputNoCri.style.float = "none";
				inputNoCri.style.marginRight = "5px";
				inputNoCri.setAttribute("onclick", "disabledToggle('n', 'criminal_penalty_carer_etc');");
				inputNoCriBox.appendChild(inputNoCri);
				
				var labelNoCri = document.createElement("label");
				labelNoCri.classList.add("form-check-label");
				labelNoCri.for = "criminal_penalty_carer_n";
				labelNoCri.innerText = "무";
				inputNoCriBox.appendChild(labelNoCri);
				
				var bodyTr3Td2 = document.createElement("td");
                bodyTr3.appendChild(bodyTr3Td2);
                
               	var inputCriPenCarerEtc = document.createElement("input");
               	inputCriPenCarerEtc.id = "criminal_penalty_carer_etc";
               	inputCriPenCarerEtc.name = "criminal_penalty_carer_etc";
               	inputCriPenCarerEtc.classList.add("form-control");
               	var criPenCarerEtc = jsonObj.map.CRIMINAL_PENALTY_CARER_ETC;
               	if(criPenCarerEtc == "" || criPenCarerEtc == undefined) {
               		inputCriPenCarerEtc.value = "";
               	} else {
               		inputCriPenCarerEtc.value = criPenCarerEtc; 
               	}
               	bodyTr3Td2.appendChild(inputCriPenCarerEtc);
				
				// 유무 체크
                var criminal_penalty_carer_yn = jsonObj.map.CRIMINAL_PENALTY_CARER_YN;
				console.log("criminal_penalty_carer_yn : " + criminal_penalty_carer_yn);
				if(criminal_penalty_carer_yn == 'y') {
					inputYesCri.checked = true;
					inputCriPenCarerEtc.disabled = false;
				} else if(criminal_penalty_carer_yn == 'n') {
					inputNoCri.checked = true;
					inputCriPenCarerEtc.disabled = true;
				} 
				
				// 저장버튼
				var submitRow = document.createElement("div");
                submitRow.classList.add("row");
                submitRow.classList.add("text-center");
                tableFiveFrm.appendChild(submitRow);
                
                var submitCol = document.createElement("div");
                submitCol.classList.add("col");
                submitRow.appendChild(submitCol);
			
                var submitBtn = document.createElement("button");
                submitBtn.classList.add("btn");
                submitBtn.classList.add("btn-primary");
                submitBtn.classList.add("mx-2");
                
                submitBtn.type = "button";
                submitBtn.innerText = "저장";
                submitBtn.setAttribute("onclick", "tableFiveFrmSubmit();");
                submitCol.appendChild(submitBtn);
                
	            var finalSubmitBtn = document.createElement("button");
                finalSubmitBtn.classList.add("btn");
                finalSubmitBtn.classList.add("btn-outline-primary");
                finalSubmitBtn.innerText = "작성완료";
                finalSubmitBtn.setAttribute("onclick", "application();");
                submitCol.appendChild(finalSubmitBtn);    
                
                var properNum = document.createElement("input");
                properNum.type = "hidden";
                properNum.value = jsonObj.map.APLCN_DTLS_PROPER_NUM;
                properNum.name = "aplcn_dtls_proper_num";
                tableFiveFrm.appendChild(properNum);
                
                commentListBox.appendChild(rowBox);

            }
    }
		 xhr.open("get" , "../admin/selTableOne?aplcn_dtls_proper_num=" + userNo); //리퀘스트 세팅..
			//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
		xhr.send(); //AJAX로 리퀘스트함..			
}

function tableSixInfo(){
    var xhr = new XMLHttpRequest(); //AJAX 객체 생성
		xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
				var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)

                var commentListBox = document.getElementById("nav-info");
				commentListBox.innerHTML = "";

                var rowBox = document.createElement("div");
                rowBox.classList.add("row");
   
                
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
                tableRow.classList.add("mx-0");
                tableRow.classList.add("px-0");
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

                var colGroup = document.createElement("col");
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
        xhr.open("get" , "../admin/selTableOne?aplcn_dtls_proper_num=" + userNo); //리퀘스트 세팅..
			//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
		xhr.send(); //AJAX로 리퀘스트함..	
}

function tableSevenInfo(){
    var xhr = new XMLHttpRequest(); //AJAX 객체 생성
		xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
				var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)

                var commentListBox = document.getElementById("nav-info");
				commentListBox.innerHTML = "";

                var rowBox = document.createElement("div");
                rowBox.classList.add("row"); 
                
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
                tableRow.classList.add("mx-0");
                tableRow.classList.add("px-0");
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
                theadTrTh1.innerText="회사/활동기관";
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
        xhr.open("get" , "../admin/selTableOne?aplcn_dtls_proper_num=" + userNo); //리퀘스트 세팅..
			//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
		xhr.send(); //AJAX로 리퀘스트함..	
}

function tableEightInfo(){
    var xhr = new XMLHttpRequest(); //AJAX 객체 생성
		xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
				var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)

                var commentListBox = document.getElementById("nav-info");
				commentListBox.innerHTML = "";

                var rowBox = document.createElement("div");
                rowBox.classList.add("row");
                
                
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
                tableRow.classList.add("mx-0");
                tableRow.classList.add("px-0");
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
                bodyTr1Th1.innerText="자격증 번호";
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
        xhr.open("get" , "../admin/selTableOne?aplcn_dtls_proper_num=" + userNo); //리퀘스트 세팅..
			//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
		xhr.send(); //AJAX로 리퀘스트함..	
}

function tableNineInfo(){
    var xhr = new XMLHttpRequest(); //AJAX 객체 생성
		xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
				var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)

                var commentListBox = document.getElementById("nav-info");
				commentListBox.innerHTML = "";

                var rowBox = document.createElement("div");
                rowBox.classList.add("row");

 
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
                tableRow.classList.add("mx-0");
                tableRow.classList.add("px-0");
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
                bodyTr1Td3A.setAttribute("href", "fileDownLoadProcess?aplcn_dtls_proper_num=" +dataList.aplcn_dtls_proper_num+ "&aplcn_atch_file_proper_num=" +dataList.aplcn_atch_file_proper_num);
                bodyTr1Td3A.classList.add("text-decoration-none");
                bodyTr1Td3A.innerText = dataList.original_file_name;
                bodyTr1Td3.appendChild(bodyTr1Td3A);
               }
                
                commentListBox.appendChild(rowBox);
                
                
            }
    }
        xhr.open("get" , "../admin/fileList?aplcn_dtls_proper_num=" + userNo); //리퀘스트 세팅..
			//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
		xhr.send(); //AJAX로 리퀘스트함..	
}


