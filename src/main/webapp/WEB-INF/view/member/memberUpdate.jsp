<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
</head>
<body>
	<div>
		<h1>회원 정보 변경</h1>
	</div>
	<form id="frm" action="memberUpdate.do" method="post">

		<div>
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

		<div>
			<button type="submit">수 정</button>
			&nbsp;&nbsp;&nbsp;
			<button type="reset">취 소</button>
			&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="delete()">회원탈퇴</button>
		</div>
	</form>

<script type="text/javascript">
function delete(){
var check = confirm("정말로 탈퇴하시겠습니까?");
if(check == true){
	alert("탈퇴가 완료되었습니다.");
	return "memberDelete.do";
} else{
	alert("회원탈퇴를 취소했습니다.");
}
}
</script>
</body>
</html>