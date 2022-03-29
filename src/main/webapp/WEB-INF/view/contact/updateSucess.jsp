<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인성공</title>
</head>
<script>
	alert('수정되었습니다.');
	location.href = "inquiryView.do?infoNum=${contactVO.infoNum}";
</script>