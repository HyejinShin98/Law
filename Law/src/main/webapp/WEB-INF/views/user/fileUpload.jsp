<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<title>Insert title here</title>
</head>
<body>
	 <div class="col container-fluid my-5 py-5" style="width : 1500px;">
    
        
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

        <form action="../user/multiFileUpload" method="post" enctype="multipart/form-data">
        <div class="row">
            <div class="row border-bottom mt-5 mx-0">
                공통 증빙서류
            </div>
            <table class="table table-bordered">
                <thead>
                <tr class="text-center">
                    <th scope="col">구분</th>
                    <th colspan="3" >제출서류명</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th rowspan="3" scope="row" class="text-center">공통서류</th>
                    <td colspan="2">사업자등록증</td>
                    <td>
                        <input type="file" name ="file">
                        <input type="hidden" name="file_code" value="co">
                        <input type="hidden" name="file_type" value="businesslicense">
                    </td>
                </tr>
                <tr>
                   
                    <td colspan="2">업무관련등록신고현황</td>
                    <td>
                        <input type="file" name ="file">
                        <input type="hidden" name="file_code" value="co">
                        <input type="hidden" name="file_type" value="businessreport">
                    </td>
                </tr>
                <tr>
                   
                    <td colspan="2">납세증명확인서</td>
                    <td>
                        <input type="file" name ="file">
                        <input type="hidden" name="file_code" value="co">
                        <input type="hidden" name="file_type" value="taxconfirm">
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="row">
            <div class="row border-bottom mt-5 mx-0">
                개인 증빙서류
            </div>
            <table class="table table-bordered">
                <thead>
                <tr class="text-center">
                    <th scope="col">구분</th>
                    <th colspan="3" >제출서류명</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th rowspan="4" scope="row" class="text-center">개인서류</th>
                    <td colspan="2">이력서</td>
                    <td>
                        <input type="file" name ="file">
                        <input type="hidden" name="file_code" value="pe">
                        <input type="hidden" name="file_type" value="resume">
                    </td>
                </tr>
                <tr>
                   
                    <td colspan="2">학력정보</td>
                    <td>
                        <input type="file" name ="file">
                        <input type="hidden" name="file_code" value="pe">
                        <input type="hidden" name="file_type" value="educationlevel">
                    </td>
                </tr>
                <tr>
                    
                    <td colspan="2">경력정보</td>
                    <td>
                        <input type="file" name ="file">
                        <input type="hidden" name="file_code" value="pe">
                        <input type="hidden" name="file_type" value="carrer">
                    </td>
                </tr>
                <tr>
                    
                    <td colspan="2">자격증정보</td>
                    <td>
                        <input type="file" name ="file">
                        <input type="hidden" name="file_code" value="pe">
                        <input type="hidden" name="file_type" value="certificate">
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="row"><div class="col d-grid"><button class="btn">입력완료</button></div></div>
        </form>
    </div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>