<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	    <div class="col">
            <div class="list-group list-group-flush">
                <a href="../admin/managementEvaluationtable" class="list-group-item list-group-item-action">평정 기준표 관리</a>
                <a href="../admin/searchCondition" class="list-group-item list-group-item-action">조건별 조회</a>
                <a href="../admin/applicantManagement" class="list-group-item list-group-item-action">신청자 조회</a>
                <a href="../admin/evaluationApplicantsList" class="list-group-item list-group-item-action">신청자 심사</a>
                <a href="../admin/selUserList" class="list-group-item list-group-item-action">1차심사 리스트</a>
                <a href="#" class="list-group-item list-group-item-action">평정 기준표 심사</a>
            </div>
        </div>
</body>
</html>