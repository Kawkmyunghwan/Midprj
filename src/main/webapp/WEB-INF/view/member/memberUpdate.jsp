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
function deleteInfo(){
	//event.preventDefault();
var check = confirm("������ Ż���Ͻðڽ��ϱ�?");
if(check == true){	
	alert("Ż�� �Ϸ�Ǿ����ϴ�.");
	return location.href="memberDelete.do";
} else{
	alert("ȸ��Ż�� ����߽��ϴ�.");
}
}
</script>
</html>