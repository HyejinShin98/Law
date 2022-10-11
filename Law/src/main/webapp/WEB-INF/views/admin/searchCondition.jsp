<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
	
<!-- 외부 css 로드  -->
<link rel="stylesheet" type="text/css" href="../resources/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script type="text/javascript" src="../resources/js/userDetailList2.js"></script>
<style>
ul {
    text-align: center;
    display: inline-block;
    border: 1px solid #ccc;
    border-right: 0;
}

ul li {
    text-align: center;
    float: left;
}

ul li a {
    display: block;
    font-size: 14px;
    padding: 9px 12px;
    border-right: solid 1px #ccc;
    box-sizing: border-box;
}

ul li.on {
    background: #eda712;
}

ul li.on a {
    color: #fff;
}

.modal-body th{
	font-size : 14px
}

.modal-body td{
	font-size : 13px
}
</style>

<title>조건별 조회</title>

<script type="text/javascript"> 
window.addEventListener("DOMContentLoaded" , function (){
	allUser();
	search();
});

function callUserDetail(e) {
	var userNo = e; 
	tableOneInfo(userNo);
	var navClassName ='nav-btn';
	var navBtn = document.getElementsByClassName(navClassName);
	for(btn of navBtn){
		btn.addEventListener('click', function(e){
			var addId = this.id;
			
			changeBtn(addId, navClassName);
			
			switch(addId){
				case 'oneTab' : 
					tableOneInfo(userNo);
					break;
				case 'fiveTab' : 
					tableFiveInfo(userNo);
					break;
				case 'sixTab' : 
					tableSixInfo(userNo);
					break;
				case 'sevenTab' : 
					tableSevenInfo(userNo);
					break;
				case 'eightTab' : 
					tableEightInfo(userNo);
					break;
				case 'nineTab' :
					tableNineInfo(userNo);
					break;
			}
		});
	}
}




function allUser(){
	var xhr = new XMLHttpRequest(); //AJAX 객체 생성
    xhr.onreadystatechange = function () {
        if(xhr.readyState == 4 && xhr.status == 200){
            var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)
            
            console.log(jsonObj);
	            for(i of jsonObj.list){
	            	console.log(i.ANNOUNCE_PROPER_NUM);
	            }
	            var ListBox = document.getElementById("list-info");
				ListBox.innerHTML = "";
	            
	            
				var rowBox = document.createElement("div");
	            rowBox.classList.add("row");
	            
	            var form = document.createElement("form");
	    		form.action="excel"
	    		form.method="post"
	    		form.classList.add("px-0");
	    		rowBox.appendChild(form);
	    		          
	    		var btn = document.createElement("button");	
	    		btn.classList.add("btn");
	    		btn.classList.add("btn-primary");
	            btn.innerText="다운로드";
	            
	            var tableRow = document.createElement("div");
                tableRow.classList.add("row");
                tableRow.classList.add("mx-0");
                tableRow.classList.add("px-0");
                form.appendChild(tableRow);
                
                var table = document.createElement("table");
                table.classList.add("table");
                table.classList.add("table-bordered");
                tableRow.appendChild(table);
             
             var colGroup = document.createElement("colgroup");
             table.appendChild(colGroup);

             var colGroupA = document.createElement("col");
             colGroupA.setAttribute("width", "7%");
             colGroup.appendChild(colGroupA);

             var colGroupB = document.createElement("col");
             colGroupB.setAttribute("width", "10%");
             colGroup.appendChild(colGroupB);

             var colGroupC = document.createElement("col");
             colGroupC.setAttribute("width", "40%");
             colGroup.appendChild(colGroupC);
             
             var colGroupD = document.createElement("col");
             colGroupD.setAttribute("width", "18%");
             colGroup.appendChild(colGroupD);
             
             var colGroupE = document.createElement("col");
             colGroupE.setAttribute("width", "15%");
             colGroup.appendChild(colGroupE);
             
             var colGroupF = document.createElement("col");
             colGroupF.setAttribute("width", "10%");
             colGroup.appendChild(colGroupF);
             
             var thead = document.createElement("thead");
             table.appendChild(thead);
             
             var theadTr = document.createElement("tr");
             theadTr.classList.add("text-center");
             thead.appendChild(theadTr);
             
             var theadTrTh1 = document.createElement("th");
             theadTrTh1.setAttribute("scope", "col");
             theadTrTh1.classList.add("table-light");
             theadTrTh1.innerText="번호";
             theadTrTh1.classList.add("px-0");
             theadTr.appendChild(theadTrTh1);
             
             var theadTrTh2 = document.createElement("th");
             theadTrTh2.setAttribute("scope", "col");
             theadTrTh2.classList.add("table-light");
             theadTrTh2.innerText="이름";
             theadTr.appendChild(theadTrTh2);
             
             var theadTrTh3 = document.createElement("th");
             theadTrTh3.setAttribute("scope", "col");
             theadTrTh3.classList.add("table-light");
             theadTrTh3.innerText="신청공고";
             theadTr.appendChild(theadTrTh3);
             
             var theadTrTh4 = document.createElement("th");
             theadTrTh4.setAttribute("scope", "col");
             theadTrTh4.classList.add("table-light");
             theadTrTh4.innerText="조력자 분류";
             theadTr.appendChild(theadTrTh4);
             
             var theadTrTh5 = document.createElement("th");
             theadTrTh5.setAttribute("scope", "col");
             theadTrTh5.classList.add("table-light");
             theadTrTh5.innerText="신청일";
             theadTr.appendChild(theadTrTh5);
             
             var theadTrTh6 = document.createElement("th");
             theadTrTh6.setAttribute("scope", "col");
             theadTrTh6.classList.add("table-light");
             theadTrTh6.innerText="신청상황";
             theadTr.appendChild(theadTrTh6);
             
             var tbody = document.createElement("tbody");
             table.appendChild(tbody);
             
             
             
             for(dataList of jsonObj.list){
                 
            	 
            	 
	             var bodyTr1 = document.createElement("tr");
	             bodyTr1.setAttribute("onclick", "callUserDetail("+dataList.aplcn_dtls_proper_num+")");
	             bodyTr1.setAttribute("data-bs-toggle", "modal");
	             bodyTr1.setAttribute("data-bs-target", "#userDetail");
	             tbody.appendChild(bodyTr1);
	
	             var bodyTr1Td1 = document.createElement("td");
	             bodyTr1Td1.classList.add("text-center");
	             bodyTr1Td1.innerText= dataList.aplcn_dtls_proper_num;
	             bodyTr1.appendChild(bodyTr1Td1);
	
	             var bodyTr1Td2 = document.createElement("td");
	             bodyTr1Td2.classList.add("text-center");
	             bodyTr1Td2.innerText = dataList.user_name;
	             bodyTr1.appendChild(bodyTr1Td2);
	             
	             var bodyTr1Td3 = document.createElement("td");
	             bodyTr1Td3.classList.add("text-center");
	             bodyTr1Td3.innerText = dataList.announce_title;
	             bodyTr1.appendChild(bodyTr1Td3);
	             
	             var bodyTr1Td4 = document.createElement("td");
	             bodyTr1Td4.classList.add("text-center");
	             bodyTr1Td4.innerText = dataList.trial_fcltt_description;
	             bodyTr1.appendChild(bodyTr1Td4);
	             
	             var bodyTr1Td5 = document.createElement("td");
	             bodyTr1Td5.classList.add("text-center");
	             bodyTr1Td5.innerText = moment(dataList.aplcn_dtls_date).format('YYYY-MM-DD');
	             bodyTr1.appendChild(bodyTr1Td5);
			
	             var bodyTr1Td6 = document.createElement("td");
	             bodyTr1Td6.classList.add("text-center");
	             bodyTr1Td6.innerText = dataList.aplcn_dtls_sts;
	             bodyTr1.appendChild(bodyTr1Td6);
             
             }
             
             form.appendChild(btn);
             
             ListBox.appendChild(rowBox);
	         }
	       }
    xhr.open("get" , "../admin/callAllUser"); //리퀘스트 세팅..
    //xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
    xhr.send(); //AJAX로 리퀘스트함..
}

function calloption(e){
	console.log(e.value);
	const targetBox = document.getElementById("target");
	
	targetBox.innerHTML = "";
	
	if(e.value == "a"){
	        
       var xhr = new XMLHttpRequest(); //AJAX 객체 생성
       xhr.onreadystatechange = function () {
           if(xhr.readyState == 4 && xhr.status == 200){
               var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)
               
               console.log(jsonObj);
               
               var selBox = document.createElement('select');
               selBox.setAttribute('id', "good");
               selBox.setAttribute('onchange', "callUser(this)");
               targetBox.appendChild(selBox);
               
               
               const selectBox = document.getElementById("good");
           	   selectBox.innerHTML = "";
     		
	       		var optionBox1 = document.createElement('option');
	       		optionBox1.innerText = '선택';
	       		selectBox.appendChild(optionBox1);
	       		
	       		for(option of jsonObj.t10){
	   	    		var optionBox = document.createElement('option');
	   	            optionBox.setAttribute('value', option.trial_fcltt_proper_num);
	   	            optionBox.innerText = option.trial_fcltt_description;
	   	            selectBox.appendChild(optionBox);
	           }
			}
		}
       
       xhr.open("get" , "../admin/callA"); //리퀘스트 세팅..
       //xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
       xhr.send(); //AJAX로 리퀘스트함..
       
	}else if(e.value == "c"){
        
       var xhr = new XMLHttpRequest(); //AJAX 객체 생성
       xhr.onreadystatechange = function () {
           if(xhr.readyState == 4 && xhr.status == 200){
               var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)
               
               console.log(jsonObj);
               
               var selBox = document.createElement('select');
               selBox.setAttribute('id', "good");
               selBox.setAttribute('onchange', "callUser(this)");
               targetBox.appendChild(selBox);
               
               const selectBox = document.getElementById("good");
           	   selectBox.innerHTML = "";
     		
	       		var optionBox1 = document.createElement('option');
	       		optionBox1.innerText = '선택';
	       		selectBox.appendChild(optionBox1);
	       		
	       		for(option of jsonObj.t2){
	   	    		var optionBox = document.createElement('option');
	   	            optionBox.setAttribute('value', option.announce_proper_num);
	   	            optionBox.innerText = option.announce_title;
	   	            selectBox.appendChild(optionBox);
	           }
	       }
	       
		}
       xhr.open("get" , "../admin/callC"); //리퀘스트 세팅..
       //xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
       xhr.send(); //AJAX로 리퀘스트함..
	}else if(e.value == "d"){
		
		var selBox = document.createElement('select');
		selBox.setAttribute('id', "good");
		selBox.setAttribute('onchange', "callUser(this)");
		targetBox.appendChild(selBox);
	             
		const selectBox = document.getElementById("good");
		selectBox.innerHTML = "";
	   		
		var optionBox1 = document.createElement('option');
		optionBox1.innerText = '선택';
		selectBox.appendChild(optionBox1);
	      		
		var optionBox2 = document.createElement('option');
		optionBox2.setAttribute('value', 'ing');
		optionBox2.innerText = '작성중';
		selectBox.appendChild(optionBox2);
		
		var optionBox3 = document.createElement('option');
		optionBox3.setAttribute('value', 'examination');
		optionBox3.innerText = '신청중';
		selectBox.appendChild(optionBox3);
		
		var optionBox4 = document.createElement('option');
		optionBox4.setAttribute('value', 'evaluationCp');
		optionBox4.innerText = '서류완료';
		selectBox.appendChild(optionBox4);
		
		var optionBox5 = document.createElement('option');
		optionBox5.setAttribute('value', 'companion');
		optionBox5.innerText = '서류반려';
		selectBox.appendChild(optionBox5);
		
		var optionBox6 = document.createElement('option');
		optionBox6.setAttribute('value', 'failure');
		optionBox6.innerText = '불합격';
		selectBox.appendChild(optionBox6);
		
		var optionBox7 = document.createElement('option');
		optionBox7.setAttribute('value', 'accept');
		optionBox7.innerText = '최종합격';
		selectBox.appendChild(optionBox7);
		
	}else if(e.value == "all"){
		var xhr = new XMLHttpRequest(); //AJAX 객체 생성
	       xhr.onreadystatechange = function () {
	           if(xhr.readyState == 4 && xhr.status == 200){
	               var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)
	               
	               console.log(jsonObj);
		            for(i of jsonObj.list){
		            	console.log(i.ANNOUNCE_PROPER_NUM);
		            }
		            var ListBox = document.getElementById("list-info");
					ListBox.innerHTML = "";
		            
		            
		            var rowBox = document.createElement("div");
		            rowBox.classList.add("row");
		            
		            var form = document.createElement("form");
		    		form.action="excel"
		    		form.method="post"
		    		form.classList.add("px-0");
		    		rowBox.appendChild(form);
		    		          
		    		var btn = document.createElement("button");	
		    		btn.classList.add("btn");
		    		btn.classList.add("btn-primary");
    	            btn.innerText="다운로드";
		            
		            var tableRow = document.createElement("div");
	                tableRow.classList.add("row");
	                tableRow.classList.add("mx-0");
	                tableRow.classList.add("px-0");
	                form.appendChild(tableRow);
	                
	                var table = document.createElement("table");
	                table.classList.add("table");
	                table.classList.add("table-bordered");
	                tableRow.appendChild(table);
	                
	                var colGroup = document.createElement("colgroup");
	                table.appendChild(colGroup);

	                var colGroupA = document.createElement("col");
	                colGroupA.setAttribute("width", "7%");
	                colGroup.appendChild(colGroupA);

	                var colGroupB = document.createElement("col");
	                colGroupB.setAttribute("width", "10%");
	                colGroup.appendChild(colGroupB);

	                var colGroupC = document.createElement("col");
	                colGroupC.setAttribute("width", "40%");
	                colGroup.appendChild(colGroupC);
	                
	                var colGroupD = document.createElement("col");
	                colGroupD.setAttribute("width", "18%");
	                colGroup.appendChild(colGroupD);
	                
	                var colGroupE = document.createElement("col");
	                colGroupE.setAttribute("width", "15%");
	                colGroup.appendChild(colGroupE);
	                
	                var colGroupF = document.createElement("col");
	                colGroupF.setAttribute("width", "10%");
	                colGroup.appendChild(colGroupF);
	                
	                var thead = document.createElement("thead");
	                table.appendChild(thead);
	                
	                var theadTr = document.createElement("tr");
	                theadTr.classList.add("text-center");
	                thead.appendChild(theadTr);
	                
	                var theadTrTh1 = document.createElement("th");
	                theadTrTh1.setAttribute("scope", "col");
	                theadTrTh1.classList.add("table-light");
	                theadTrTh1.innerText="번호";
	                theadTrTh1.classList.add("px-0");
	                theadTr.appendChild(theadTrTh1);
	                
	                var theadTrTh2 = document.createElement("th");
	                theadTrTh2.setAttribute("scope", "col");
	                theadTrTh2.classList.add("table-light");
	                theadTrTh2.innerText="이름";
	                theadTr.appendChild(theadTrTh2);
	                
	                var theadTrTh3 = document.createElement("th");
	                theadTrTh3.setAttribute("scope", "col");
	                theadTrTh3.classList.add("table-light");
	                theadTrTh3.innerText="신청공고";
	                theadTr.appendChild(theadTrTh3);
	                
	                var theadTrTh4 = document.createElement("th");
	                theadTrTh4.setAttribute("scope", "col");
	                theadTrTh4.classList.add("table-light");
	                theadTrTh4.innerText="조력자 분류";
	                theadTr.appendChild(theadTrTh4);
	                
	                var theadTrTh5 = document.createElement("th");
	                theadTrTh5.setAttribute("scope", "col");
	                theadTrTh5.classList.add("table-light");
	                theadTrTh5.innerText="신청일";
	                theadTr.appendChild(theadTrTh5);
	                
	                var theadTrTh6 = document.createElement("th");
	                theadTrTh6.setAttribute("scope", "col");
	                theadTrTh6.classList.add("table-light");
	                theadTrTh6.innerText="신청상황";
	                theadTr.appendChild(theadTrTh6);
	                
	                var tbody = document.createElement("tbody");
	                table.appendChild(tbody);
	                
	                for(dataList of jsonObj.list){
	                    
		                var bodyTr1 = document.createElement("tr");
		                bodyTr1.setAttribute("onclick", "callUserDetail("+dataList.aplcn_dtls_proper_num+")");
		                bodyTr1.setAttribute("data-bs-toggle", "modal");
		                bodyTr1.setAttribute("data-bs-target", "#userDetail");
		                tbody.appendChild(bodyTr1);
	
		                var bodyTr1Td1 = document.createElement("td");
		                bodyTr1Td1.classList.add("text-center");
		                bodyTr1Td1.innerText= dataList.aplcn_dtls_proper_num;
		                bodyTr1.appendChild(bodyTr1Td1);
	
		                var bodyTr1Td2 = document.createElement("td");
		                bodyTr1Td2.classList.add("text-center");
		                bodyTr1Td2.innerText = dataList.user_name;
		               
		                bodyTr1.appendChild(bodyTr1Td2);
		                
		                var bodyTr1Td3 = document.createElement("td");
		                bodyTr1Td3.classList.add("text-center");
		                bodyTr1Td3.innerText = dataList.announce_title;
		                bodyTr1.appendChild(bodyTr1Td3);
		                
		                var bodyTr1Td4 = document.createElement("td");
		                bodyTr1Td4.classList.add("text-center");
		                bodyTr1Td4.innerText = dataList.trial_fcltt_description;
		                bodyTr1.appendChild(bodyTr1Td4);
		                
		                var bodyTr1Td5 = document.createElement("td");
		                bodyTr1Td5.classList.add("text-center");
		                bodyTr1Td5.innerText = moment(dataList.aplcn_dtls_date).format('YYYY-MM-DD');
		                bodyTr1.appendChild(bodyTr1Td5);
				
		                var bodyTr1Td6 = document.createElement("td");
		                bodyTr1Td6.classList.add("text-center");
		                bodyTr1Td6.innerText = dataList.aplcn_dtls_sts;
		                bodyTr1.appendChild(bodyTr1Td6);
	                
	                }
	                
	                form.appendChild(btn);
	                
	                ListBox.appendChild(rowBox);
		           }
		       }
	       xhr.open("get" , "../admin/callAllUser"); //리퀘스트 세팅..
	       //xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
	       xhr.send(); //AJAX로 리퀘스트함..
		
	}
}

function callUser(e){
	const selectBox1 = document.getElementById("select");
	
	var xhr = new XMLHttpRequest(); //AJAX 객체 생성
    xhr.onreadystatechange = function () {
        if(xhr.readyState == 4 && xhr.status == 200){
            var jsonObj = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)
            
            console.log(jsonObj);
            for(i of jsonObj.list){
            	console.log(i.ANNOUNCE_PROPER_NUM);
            }
            var ListBox = document.getElementById("list-info");
			ListBox.innerHTML = "";
            
            
            var rowBox = document.createElement("div");
            rowBox.classList.add("row");
            
            
            var tableRow = document.createElement("div");
               tableRow.classList.add("row");
               tableRow.classList.add("mx-0");
               tableRow.classList.add("px-0");
               rowBox.appendChild(tableRow);
               
               var table = document.createElement("table");
               table.classList.add("table");
               table.classList.add("table-bordered");
               tableRow.appendChild(table);
               
               var colGroup = document.createElement("colgroup");
               table.appendChild(colGroup);

               var colGroupA = document.createElement("col");
               colGroupA.setAttribute("width", "7%");
               colGroup.appendChild(colGroupA);

               var colGroupB = document.createElement("col");
               colGroupB.setAttribute("width", "10%");
               colGroup.appendChild(colGroupB);

               var colGroupC = document.createElement("col");
               colGroupC.setAttribute("width", "40%");
               colGroup.appendChild(colGroupC);
               
               var colGroupD = document.createElement("col");
               colGroupD.setAttribute("width", "18%");
               colGroup.appendChild(colGroupD);
               
               var colGroupE = document.createElement("col");
               colGroupE.setAttribute("width", "15%");
               colGroup.appendChild(colGroupE);
               
               var colGroupF = document.createElement("col");
               colGroupF.setAttribute("width", "10%");
               colGroup.appendChild(colGroupF);
               
               var thead = document.createElement("thead");
               table.appendChild(thead);
               
               var theadTr = document.createElement("tr");
               theadTr.classList.add("text-center");
               thead.appendChild(theadTr);
               
               var theadTrTh1 = document.createElement("th");
               theadTrTh1.setAttribute("scope", "col");
               theadTrTh1.classList.add("table-light");
               theadTrTh1.innerText="번호";
               theadTrTh1.classList.add("px-0");
               theadTr.appendChild(theadTrTh1);
               
               var theadTrTh2 = document.createElement("th");
               theadTrTh2.setAttribute("scope", "col");
               theadTrTh2.classList.add("table-light");
               theadTrTh2.innerText="이름";
               theadTr.appendChild(theadTrTh2);
               
               var theadTrTh3 = document.createElement("th");
               theadTrTh3.setAttribute("scope", "col");
               theadTrTh3.classList.add("table-light");
               theadTrTh3.innerText="신청공고";
               theadTr.appendChild(theadTrTh3);
               
               var theadTrTh4 = document.createElement("th");
               theadTrTh4.setAttribute("scope", "col");
               theadTrTh4.classList.add("table-light");
               theadTrTh4.innerText="조력자 분류";
               theadTr.appendChild(theadTrTh4);
               
               var theadTrTh5 = document.createElement("th");
               theadTrTh5.setAttribute("scope", "col");
               theadTrTh5.classList.add("table-light");
               theadTrTh5.innerText="신청일";
               theadTr.appendChild(theadTrTh5);
               
               var theadTrTh6 = document.createElement("th");
               theadTrTh6.setAttribute("scope", "col");
               theadTrTh6.classList.add("table-light");
               theadTrTh6.innerText="신청상황";
               theadTr.appendChild(theadTrTh6);
               
               var tbody = document.createElement("tbody");
               table.appendChild(tbody);
               
               
               
               for(dataList of jsonObj.list){
               
            	
                   
                var bodyTr1 = document.createElement("tr");
                bodyTr1.setAttribute("onclick", "callUserDetail("+dataList.aplcn_dtls_proper_num+")");
                bodyTr1.setAttribute("data-bs-toggle", "modal");
                bodyTr1.setAttribute("data-bs-target", "#userDetail");
                tbody.appendChild(bodyTr1);

                var bodyTr1Td1 = document.createElement("td");
                bodyTr1Td1.classList.add("text-center");
                bodyTr1Td1.innerText= dataList.aplcn_dtls_proper_num;
                bodyTr1.appendChild(bodyTr1Td1);

                var bodyTr1Td2 = document.createElement("td");
                bodyTr1Td2.classList.add("text-center");
                bodyTr1Td2.innerText = dataList.user_name;
                bodyTr1.appendChild(bodyTr1Td2);
                
                var bodyTr1Td3 = document.createElement("td");
                bodyTr1Td3.classList.add("text-center");
                bodyTr1Td3.innerText = dataList.announce_title;
                bodyTr1.appendChild(bodyTr1Td3);
                
                var bodyTr1Td4 = document.createElement("td");
                bodyTr1Td4.classList.add("text-center");
                bodyTr1Td4.innerText = dataList.trial_fcltt_description;
                bodyTr1.appendChild(bodyTr1Td4);
                
                var bodyTr1Td5 = document.createElement("td");
                bodyTr1Td5.classList.add("text-center");
                bodyTr1Td5.innerText = moment(dataList.aplcn_dtls_date).format('YYYY-MM-DD');
                bodyTr1.appendChild(bodyTr1Td5);
		
                var bodyTr1Td6 = document.createElement("td");
                bodyTr1Td6.classList.add("text-center");
                bodyTr1Td6.innerText = dataList.aplcn_dtls_sts;
                bodyTr1.appendChild(bodyTr1Td6);
               
               }
               
              
               
               ListBox.appendChild(rowBox);        
            
        }
    }
    if(selectBox1.value == "a"){
	    xhr.open("get" , "../admin/callAUser?trial_fcltt_proper_num=" + e.value); //리퀘스트 세팅..
	    //xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
	    xhr.send(); //AJAX로 리퀘스트함..
    }else if(selectBox1.value == "c"){
	    xhr.open("get" , "../admin/callCUser?announce_proper_num=" + e.value); //리퀘스트 세팅..
	    //xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
	    xhr.send(); //AJAX로 리퀘스트함..
	}else if(selectBox1.value == "d"){
	    xhr.open("get" , "../admin/callDUser?aplcn_dtls_sts=" + e.value); //리퀘스트 세팅..
	    //xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
	    xhr.send(); //AJAX로 리퀘스트함..
	}
	
}

//답정 너 - 가져가 붙이면됨..
function searchAjax(){
	
	const userValue = document.getElementById("search").value;
	const selectValue = document.getElementById("select");
	const goodValue = document.getElementById("good").value;
	console.log(userValue + selectValue + goodValue);
	console.log(selectValue);
	
	
	var xhr = new XMLHttpRequest(); //AJAX 객체 생성
	xhr.onreadystatechange = function () {
		if(xhr.readyState == 4 && xhr.status == 200){
			var result = JSON.parse(xhr.responseText); //xhr.responseText = 응답 결과 텍스트(JSON)
			
			 var ListBox = document.getElementById("list-info");
				ListBox.innerHTML = "";
	            
	            
	            var rowBox = document.createElement("div");
	            rowBox.classList.add("row");
	            
	            
	            var tableRow = document.createElement("div");
	               tableRow.classList.add("row");
	               tableRow.classList.add("mx-0");
	               tableRow.classList.add("px-0");
	               rowBox.appendChild(tableRow);
	               
	               var table = document.createElement("table");
	               table.classList.add("table");
	               table.classList.add("table-bordered");
	               tableRow.appendChild(table);
	               
	               var colGroup = document.createElement("colgroup");
	               table.appendChild(colGroup);

	               var colGroupA = document.createElement("col");
	               colGroupA.setAttribute("width", "7%");
	               colGroup.appendChild(colGroupA);

	               var colGroupB = document.createElement("col");
	               colGroupB.setAttribute("width", "10%");
	               colGroup.appendChild(colGroupB);

	               var colGroupC = document.createElement("col");
	               colGroupC.setAttribute("width", "40%");
	               colGroup.appendChild(colGroupC);
	               
	               var colGroupD = document.createElement("col");
	               colGroupD.setAttribute("width", "18%");
	               colGroup.appendChild(colGroupD);
	               
	               var colGroupE = document.createElement("col");
	               colGroupE.setAttribute("width", "15%");
	               colGroup.appendChild(colGroupE);
	               
	               var colGroupF = document.createElement("col");
	               colGroupF.setAttribute("width", "10%");
	               colGroup.appendChild(colGroupF);
	               
	               var thead = document.createElement("thead");
	               table.appendChild(thead);
	               
	               var theadTr = document.createElement("tr");
	               theadTr.classList.add("text-center");
	               thead.appendChild(theadTr);
	               
	               var theadTrTh1 = document.createElement("th");
	               theadTrTh1.setAttribute("scope", "col");
	               theadTrTh1.classList.add("table-light");
	               theadTrTh1.innerText="번호";
	               theadTrTh1.classList.add("px-0");
	               theadTr.appendChild(theadTrTh1);
	               
	               var theadTrTh2 = document.createElement("th");
	               theadTrTh2.setAttribute("scope", "col");
	               theadTrTh2.classList.add("table-light");
	               theadTrTh2.innerText="이름";
	               theadTr.appendChild(theadTrTh2);
	               
	               var theadTrTh3 = document.createElement("th");
	               theadTrTh3.setAttribute("scope", "col");
	               theadTrTh3.classList.add("table-light");
	               theadTrTh3.innerText="신청공고";
	               theadTr.appendChild(theadTrTh3);
	               
	               var theadTrTh4 = document.createElement("th");
	               theadTrTh4.setAttribute("scope", "col");
	               theadTrTh4.classList.add("table-light");
	               theadTrTh4.innerText="조력자 분류";
	               theadTr.appendChild(theadTrTh4);
	               
	               var theadTrTh5 = document.createElement("th");
	               theadTrTh5.setAttribute("scope", "col");
	               theadTrTh5.classList.add("table-light");
	               theadTrTh5.innerText="신청일";
	               theadTr.appendChild(theadTrTh5);
	               
	               var theadTrTh6 = document.createElement("th");
	               theadTrTh6.setAttribute("scope", "col");
	               theadTrTh6.classList.add("table-light");
	               theadTrTh6.innerText="신청상황";
	               theadTr.appendChild(theadTrTh6);
	               
	               var tbody = document.createElement("tbody");
	               table.appendChild(tbody);
	               
	               
	               for(dataList of result.list){
	               
	                   
	                var bodyTr1 = document.createElement("tr");
	                bodyTr1.setAttribute("onclick", "callUserDetail("+dataList.APLCN_DTLS_PROPER_NUM+")");
	                bodyTr1.setAttribute("data-bs-toggle", "modal");
	                bodyTr1.setAttribute("data-bs-target", "#userDetail");
	                tbody.appendChild(bodyTr1);

	                var bodyTr1Td1 = document.createElement("td");
	                bodyTr1Td1.classList.add("text-center");
	                bodyTr1Td1.innerText= dataList.APLCN_DTLS_PROPER_NUM;
	                bodyTr1.appendChild(bodyTr1Td1);

	                var bodyTr1Td2 = document.createElement("td");
	                bodyTr1Td2.classList.add("text-center");
	                bodyTr1Td2.innerText = dataList.USER_NAME;
	                bodyTr1.appendChild(bodyTr1Td2);
	                
	                var bodyTr1Td3 = document.createElement("td");
	                bodyTr1Td3.classList.add("text-center");
	                bodyTr1Td3.innerText = dataList.ANNOUNCE_TITLE;
	                bodyTr1.appendChild(bodyTr1Td3);
	                
	                var bodyTr1Td4 = document.createElement("td");
	                bodyTr1Td4.classList.add("text-center");
	                bodyTr1Td4.innerText = dataList.TRIAL_FCLTT_DESCRIPTION;
	                bodyTr1.appendChild(bodyTr1Td4);
	                
	                var bodyTr1Td5 = document.createElement("td");
	                bodyTr1Td5.classList.add("text-center");
	                bodyTr1Td5.innerText = moment(dataList.APLCN_DTLS_DATE).format('YYYY-MM-DD');
	                bodyTr1.appendChild(bodyTr1Td5);
			
	                var bodyTr1Td6 = document.createElement("td");
	                bodyTr1Td6.classList.add("text-center");
	                bodyTr1Td6.innerText = dataList.APLCN_DTLS_STS;
	                bodyTr1.appendChild(bodyTr1Td6);
	               
	               }
	               
	              
	               
	               ListBox.appendChild(rowBox);        
		}
	}
		

	 	if(selectValue.value == "a"){
		    xhr.open("get" , "../admin/searchUserName?user_name=" + userValue + "&trial_fcltt_proper_num=" + goodValue); //리퀘스트 세팅..
		    //xhr.setRequestHeader("application/json"); //Post
		    xhr.send(); //AJAX로 리퀘스트함..
	 	}else if(selectValue.value == "c"){
		    xhr.open("get" , "../admin/searchUserName?user_name=" + userValue + "&announce_proper_num=" + goodValue); //리퀘스트 세팅..
		    //xhr.setRequestHeader("Content-type","application/json"); //Post
		    xhr.send(); //AJAX로 리퀘스트함..
		}else if(selectValue.value == "d"){
		    xhr.open("get" , "../admin/searchUserName?user_name=" + userValue + "&aplcn_dtls_sts=" + goodValue); //리퀘스트 세팅..
		    //xhr.setRequestHeader("Content-type","application/json"); //Post
		    xhr.send(); //AJAX로 리퀘스트함..
		}

}


function search(){
	
	var targetBox = document.getElementById("target2");
	targetBox.innerHTML = "";
	
	var row = document.createElement("div");
	row.classList.add("row");
	
	var col1 = document.createElement("div");
	col1.classList.add("col");
	col1.classList.add("px-0");
	col1.classList.add("pt-1");
	row.appendChild(col1);
	
	var input = document.createElement("input");
	input.setAttribute("type", "text");
	input.setAttribute("name", "user_name");
	input.setAttribute("id","search");
	/* input.setAttribute("style","height:34px"); */
	col1.appendChild(input);
	
	var col2 = document.createElement("div");
	col2.classList.add("col");
	col2.classList.add("text-center");
	row.appendChild(col2);
	
	var a = document.createElement("a");
	a.classList.add("btn");
	a.classList.add("btn-secondary");
	a.classList.add("btn-sm");
	a.innerText="검색";
	a.setAttribute("onclick", "searchAjax()");
	col2.appendChild(a);
	
	targetBox.appendChild(row);

	
}

	


</script>
</head>
<body>
<div class="container-fluid" style="width: 960px;">
	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<!-- 구분 이미지 -->
	<img src="../resources/img/sub_topimg.gif">
	
	<!-- 페이지 내용 -->
	<div class="row mt-2">
		<!-- 사이드 네비바 -->
		<div class="col-3 text-center" style="border-right: solid 1px #ccc;">
			<jsp:include page="../common/assistantAdminNav.jsp"></jsp:include>
		</div>
		
		<!-- 본문 -->
		<div class="col m-3">
			<!-- 현재위치 -->
			<div class="row text-end loc">
				<div class="col" style="font-size: 11px;">
					<span> 홈 > 재판조력자관리 > </span><span style="color: #72a8fe;font-weight: bold;">조건별 조회</span>
				</div>
			</div>
			<!-- 타이틀 -->
			<div class="row my-4">
				<div class="col">
					<img src="../resources/img/Admin/head_title_img.gif">
					<span style="font-weight: bold;">조건별 조회</span>
				</div>
			</div>
			<!-- 안내 -->
			<div class="contentsinbox">
				<div class="row align-items-center" >
					<div class="col-2">
						<select id="select" onchange="calloption(this)" >
							<option value="all">전체</option>
							<option value="a">조력자별 조회</option>
<!-- 							<option value="b">기간별 조회</option> -->
							<option value="c">공고별 조회</option>
							<option value="d">신청현황 조회</option>
						</select>
					</div>
					<div id="target" class="col-6" ></div>						 
					<div class="col-4" id="target2" style="text-align: end;"></div>
				</div>
				<br>
				<div class="row mx-0">
					<div id="list-info" class="col"></div>
				</div> 
			</div>
			
			<div class="row justify-content-center" >
			<div class="col">
			</div>
			<div class="col">
				<nav aria-label="Page navigation example">
				  <ul class="pagination justify-content-center" style="border: none;">
				    <li class="page-item disabled">
				      <a class="page-link"><i class="bi bi-arrow-left-short"></i></a>
				    </li>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#"><i class="bi bi-arrow-right-short"></i></a>
				    </li>
				  </ul>
				</nav>
			</div>
			<div class="col"></div>	
				
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</div>
</div>

<!-- User Detail Modal -->
<div class="modal fade" id="userDetail" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">User Detail Modal</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body m-2">
				<!-- 실험용 -->
		 		<div class="row text-center my-2 mx-1"><!-- 네비바 -->            
		            <div class="col-2 py-3 nav-btn border border-bottom-0 text-primary text-opacity-50 fw-bold" id="oneTab"><span>기본정보</span></div>
		            <div class="col-2 py-3 nav-btn border bg-secondary bg-opacity-10" id="fiveTab"><span>신청정보</span></div>
		            <div class="col-2 py-3 nav-btn border bg-secondary bg-opacity-10" id="sixTab"><span>학력정보</span></div>
		            <div class="col-2 py-3 nav-btn border bg-secondary bg-opacity-10" id="sevenTab"><span>경력정보</span></div>
		            <div class="col-2 py-3 nav-btn border bg-secondary bg-opacity-10" id="eightTab"><span>자격증정보</span></div>
		            <div class="col-2 py-3 nav-btn border bg-secondary bg-opacity-10" id="nineTab"><span>첨부파일</span></div>
		        </div>
		 		<div class="row mx-0">
					<div id="nav-info" class="col"></div>
				</div>
				 
			</div>
			<div id="userDetailButtonBox" class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>