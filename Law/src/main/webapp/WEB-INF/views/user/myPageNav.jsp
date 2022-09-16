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
                <a href="./myApplication" class="list-group-item list-group-item-action">나의 등재신청 내역</a>
                <a href="./myActive" class="list-group-item list-group-item-action">나의 활동 내역</a>
                <a href="./myInfo" class="list-group-item list-group-item-action">내정보</a>
                <a href="./myPause" class="list-group-item list-group-item-action">중지/해제신청 관리</a>
            </div>
        </div>
</body>
</html>