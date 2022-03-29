<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
</script>
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
				<tr>
					<th>선호직군</th>
					<td><input type="checkbox" id="fav1" value="IT">IT&nbsp;&nbsp;
						<input type="checkbox" id="fav2" value="기획">기획&nbsp;&nbsp;
						<input type="checkbox" id="fav3" value="건축">건축
						<input type="hidden" id="fav0" name="favorite"></td>
				</tr>
			</table>
		</div>
		<div align="center">
			<button type="submit" class="btn head-btn1">수 정</button>

			<button type="reset" class="btn head-btn1">취 소</button>

			<button type="button" onclick="deleteInfo()" class="btn head-btn1">회원탈퇴</button>
		</div>
	</form>

</body>
<script>
	var fav1 = document.getElementById("fav1");
	var fav2 = document.getElementById("fav2");
	var fav3 = document.getElementById("fav3");

	var fav = '${fav}';
	fav = fav.split(", ");

	console.log(fav[1]);
	for(let i=0;i<fav.length;i++){
		if(fav[i] == fav1.value){
			fav1.checked = true;
		}
		if(fav[i] == fav2.value){
			fav2.checked = true;
		}
		if(fav[i] == fav3.value){
			fav3.checked = true;
		}
	}
	

	function deleteInfo() {
		
		var check = confirm("정말로 탈퇴하시겠습니까?");
		if (check == true) {
			alert("탈퇴가 완료되었습니다.");
			return location.href = "memberDelete.do";
		} else {
			alert("회원탈퇴를 취소했습니다.");
		}
	}
</script>
</html>