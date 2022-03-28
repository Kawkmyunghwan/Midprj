<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form id="" action="" method="post">
<div align="center">
<div>
<table border="1">
<tr>
<td width="200">${notes.title }</td>
<th width="100">발신자</th>
<td width="150">${notes.sentId }</td>
<th width="100">발신일</th>
<td width="150">${notes.dateSent }</td>
</tr>
<tr>
<td colspan="6" height="150">${notes.note }</td>
</tr>
</table>
</div></div>
</form>
</body>
</html>