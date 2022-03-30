<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>로그인실패</title>
</head>
<script>
	alert('아이디 또는 비밀번호가 맞지않습니다.');
	history.go(-1); //로그인폼으로 돌아가지만 입력했던정보가 그대로 남아있음 .back(); 도 같음
	//location.href = "login.do"; //다시 로그인폼으로 돌아가게만들었지만 비밀번호를 맞게입력했을때도 다시 돌아와짐 어케하누
</script>
<body>

</body>
</html>