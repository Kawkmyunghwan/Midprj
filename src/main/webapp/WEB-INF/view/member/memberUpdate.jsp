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
		<h1>ȸ�� ���� ����</h1>
	</div>
	<form id="frm" action="memberUpdate.do" method="post">

		<div>
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

		<div>
			<button type="submit">�� ��</button>
			&nbsp;&nbsp;&nbsp;
			<button type="reset">�� ��</button>
			&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="delete()">ȸ��Ż��</button>
		</div>
	</form>

<script type="text/javascript">
function delete(){
var check = confirm("������ Ż���Ͻðڽ��ϱ�?");
if(check == true){
	alert("Ż�� �Ϸ�Ǿ����ϴ�.");
	return "memberDelete.do";
} else{
	alert("ȸ��Ż�� ����߽��ϴ�.");
}
}
</script>
</body>
</html>