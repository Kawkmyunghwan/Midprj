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
		<h1>ȸ�� ���� ����</h1>
	</div>
	<form id="frm" action="memberUpdate.do" method="post">

		<div align="center">
			<table>
				<tr>
					<th>�̸�</th>
					<td><input type="text" name="memberName" id="memberName">
					</td>
				</tr>

				<tr>
					<th>��ȭ��ȣ</th>
					<td><input type="text" name="memberPhone" id="memberPhone">
					</td>
				</tr>

				<tr>
					<th>��й�ȣ</th>
					<td><input type="text" name="memberPassword"
						id="memberPassword"></td>
				</tr>
				<tr>
					<th>��ȣ����</th>
					<td><input type="checkbox" id="fav1" value="IT">IT&nbsp;&nbsp;
						<input type="checkbox" id="fav2" value="��ȹ">��ȹ&nbsp;&nbsp;
						<input type="checkbox" id="fav3" value="����">����
						<input type="hidden" id="fav0" name="favorite"></td>
				</tr>
			</table>
		</div>
		<div align="center">
			<button type="submit" class="btn head-btn1">�� ��</button>

			<button type="reset" class="btn head-btn1">�� ��</button>

			<button type="button" onclick="deleteInfo()" class="btn head-btn1">ȸ��Ż��</button>
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
		
		var check = confirm("������ Ż���Ͻðڽ��ϱ�?");
		if (check == true) {
			alert("Ż�� �Ϸ�Ǿ����ϴ�.");
			return location.href = "memberDelete.do";
		} else {
			alert("ȸ��Ż�� ����߽��ϴ�.");
		}
	}
</script>
</html>