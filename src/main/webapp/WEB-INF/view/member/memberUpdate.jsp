<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div>
		<h1>회원 정보 변경</h1>
	</div>
	<form id="frm" action="memberUpdate.do" method="post">

		<div align="center">
			<table>
				<tr>
					<th>이름</th>
					<td><input type="text" name="memberName" id="memberName">
					</td>
				</tr>

				<tr>
					<th>전화번호</th>
					<td><input type="text" name="memberPhone" id="memberPhone">
					</td>
				</tr>

				<tr>
					<th>비밀번호</th>
					<td><input type="text" name="memberPassword"
						id="memberPassword"></td>
				</tr>
			</table>
		</div>

		<div align="center">
			<button type="submit">수 정</button>
			&nbsp;&nbsp;&nbsp;
			<button type="reset">취 소</button>
			&nbsp;&nbsp;&nbsp;
			<span><input type="button" onclick="delete()" value="회원탈퇴"></span>
		</div>
	</form>

	<script>
function delete(){
	event.preventDefault();
var check = confirm("정말로 탈퇴하시겠습니까?");
if(check == true){
	frm.submit();
	alert("탈퇴가 완료되었습니다.");
	return "memberDelete.do";
} else{
	alert("회원탈퇴를 취소했습니다.");
}
}
</script>
</body>
</html>