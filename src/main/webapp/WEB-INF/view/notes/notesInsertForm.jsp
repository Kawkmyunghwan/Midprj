<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div>
			<h2>���� ������</h2>
		</div>
		<div align="center">
			<form id="frm" action="noteInsert.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="100">�޴� ���ID</th>
							<td width="150"><input type="text" id="recvId" name="recvId"
								required="required"></td>
						</tr>
						<tr>
							<th>����</th>
							<td colspan="3"><input type="text" size="80" id="title"
								name="title" required="required"></td>
						</tr>
						<tr>
							<th>����</th>
							<td colspan="3"><textarea rows="10" cols="80" name="note"></textarea>
							</td>
						</tr>
					</table>
				</div>
				<br>
				<div>
					<button type="submit">������</button>
					&nbsp;&nbsp;&nbsp;
					<button type="reset">�� ��</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" onclick="location.href = 'noteList.do'">������
						</button>
					&nbsp;&nbsp;&nbsp;
				</div>
			</form>
		</div>
	</div>
</body>
</html>